###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_nmap_http_php_version_net.nasl 12297 2018-11-09 16:00:07Z cfischer $
#
# Autogenerated NSE wrapper
#
# Authors:
# NSE-Script: Ange Gutek, Rob Nicholls
# NASL-Wrapper: autogenerated
#
# Copyright:
# NSE-Script: The Nmap Security Scanner (http://nmap.org)
# Copyright (C) 2011 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.104114");
  script_version("2019-04-08T06:04:46+0000");
  script_tag(name:"last_modification", value:"2019-04-08 06:04:46 +0000 (Mon, 08 Apr 2019)");
  script_tag(name:"creation_date", value:"2011-06-01 16:32:46 +0200 (Wed, 01 Jun 2011)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_name("Nmap NSE net: http-php-version");
  script_category(ACT_INIT);
  script_tag(name:"qod_type", value:"remote_analysis");
  script_copyright("NSE-Script: The Nmap Security Scanner; NASL-Wrapper: Greenbone Networks GmbH");
  script_family("Nmap NSE net");
  script_dependencies("nmap_nse_net.nasl");
  script_mandatory_keys("Tools/Launch/nmap_nse_net");

  script_add_preference(name:"http.pipeline", value:"", type:"entry");
  script_add_preference(name:"http-max-cache-size", value:"", type:"entry");

  script_xref(name:"URL", value:"http://www.0php.com/php_easter_egg.php");

  script_tag(name:"summary", value:"Attempts to retrieve the PHP version from a web server. PHP has a number of magic queries that
return images or text that can vary with the PHP version. This script uses the following queries:

  * '/?=PHPE9568F36-D428-11d2-A769-00AA001ACF42': gets a GIF logo, which changes on April
Fool's Day.

  * '/?=PHPB8B5F2A0-3C92-11d3-A3A9-4C7B08C10000': gets an HTML credits page.

A list of magic queries is available at the references. The script also checks if any
header field value starts with ''PHP'' and reports that value if found.

SYNTAX:

http.pipeline:  If set, it represents the number of HTTP requests that'll be
pipelined (ie, sent in a single request). This can be set low to make
debugging easier, or it can be set high to test how a server reacts (its
chosen max is ignored).

http-max-cache-size:  The maximum memory size (in bytes) of the cache.");

  exit(0);
}

include("nmap.inc");
include("http_func.inc");

phase = 0;
if (defined_func("scan_phase")) {
  phase = scan_phase();
}

if (phase == 1) {
    argv = make_array();

    pref = script_get_preference("http.pipeline");
    if (!isnull(pref) && pref != "") {
        argv["http.pipeline"] = string('"', pref, '"');
    }
    pref = http_get_user_agent();
    if (!isnull(pref) && pref != "") {
        argv["http.useragent"] = string('"', pref, '"');
    }
    pref = script_get_preference("http-max-cache-size");
    if (!isnull(pref) && pref != "") {
        argv["http-max-cache-size"] = string('"', pref, '"');
    }
    nmap_nse_register(script:"http-php-version", args:argv);
} else if (phase == 2) {
    res = nmap_nse_get_results(script:"http-php-version");
    foreach portspec (keys(res)) {
        output_banner = 'Result found by Nmap Security Scanner (http-php-version.nse) http://nmap.org:\n\n';
        if (portspec == "0") {
            log_message(data:output_banner + res[portspec], port:0);
        } else {
            v = split(portspec, sep:"/", keep:0);
            proto = v[0];
            port = v[1];
            log_message(data:output_banner + res[portspec], port:port, protocol:proto);
        }
    }
}
