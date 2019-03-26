###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_nmap_netbus_auth_bypass_net.nasl 12127 2018-10-26 13:14:31Z cfischer $
#
# Autogenerated NSE wrapper
#
# Authors:
# NSE-Script: Toni Ruottu
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
  script_oid("1.3.6.1.4.1.25623.1.0.104131");
  script_version("$Revision: 12127 $");
  script_tag(name:"last_modification", value:"$Date: 2018-10-26 15:14:31 +0200 (Fri, 26 Oct 2018) $");
  script_tag(name:"creation_date", value:"2011-06-01 16:32:46 +0200 (Wed, 01 Jun 2011)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_name("Nmap NSE net: netbus-auth-bypass");
  script_category(ACT_INIT);
  script_tag(name:"qod_type", value:"remote_analysis");
  script_copyright("NSE-Script: The Nmap Security Scanner; NASL-Wrapper: Greenbone Networks GmbH");
  script_family("Nmap NSE net");
  script_dependencies("nmap_nse_net.nasl");
  script_mandatory_keys("Tools/Launch/nmap_nse_net");
  script_tag(name:"summary", value:"Checks if a NetBus server is vulnerable to an authentication bypass vulnerability which allows ful
access without knowing the password.

For example a server running on TCP port 12345 on localhost with this vulnerability is accessible to
anyone. An attacker could simply form a connection to the server ( ncat -C 127.0.0.1 12345 ) and
login to the service by typing Password<comma>1<comma> into the console.");

  script_tag(name:"solution_type", value:"Mitigation");

  exit(0);
}

include("nmap.inc");

phase = 0;
if (defined_func("scan_phase")) {
  phase = scan_phase();
}

if (phase == 1) {
  argv = make_array();
  nmap_nse_register(script:"netbus-auth-bypass", args:argv);
} else if (phase == 2) {
    res = nmap_nse_get_results(script:"netbus-auth-bypass");
    foreach portspec (keys(res)) {
        output_banner = 'Result found by Nmap Security Scanner (netbus-auth-bypass.nse) http://nmap.org:\n\n';
        if (portspec == "0") {
            security_message(data:output_banner + res[portspec], port:0);
        } else {
            v = split(portspec, sep:"/", keep:0);
            proto = v[0];
            port = v[1];
            security_message(data:output_banner + res[portspec], port:port, protocol:proto);
        }
    }
}
