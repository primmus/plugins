###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_nmap_rmi_dumpregistry_net.nasl 11527 2018-09-21 15:59:27Z cfischer $
#
# Autogenerated NSE wrapper
#
# Authors:
# NSE-Script: Martin Holst Swende
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
  script_oid("1.3.6.1.4.1.25623.1.0.104155");
  script_version("$Revision: 11527 $");
  script_tag(name:"last_modification", value:"$Date: 2018-09-21 17:59:27 +0200 (Fri, 21 Sep 2018) $");
  script_tag(name:"creation_date", value:"2011-06-01 16:32:46 +0200 (Wed, 01 Jun 2011)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_name("Nmap NSE net: rmi-dumpregistry");
  script_category(ACT_INIT);
  script_tag(name:"qod_type", value:"remote_analysis");
  script_copyright("NSE-Script: The Nmap Security Scanner; NASL-Wrapper: Greenbone Networks GmbH");
  script_family("Nmap NSE net");
  script_dependencies("nmap_nse_net.nasl");
  script_mandatory_keys("Tools/Launch/nmap_nse_net");
  script_tag(name:"summary", value:"Connects to a remote RMI registry and attempts to dump all of its objects.

First it tries to determine the names of all objects bound in the registry, and then it tries to
determine information about the objects, such as the the class names of the superclasses and
interfaces. This may, depending on what the registry is used for, give valuable information about
the service. E.g, if the app uses JMX (Java Management eXtensions), you should see an object called
'jmxconnector' on it.

It also gives information about where the objects are located, (marked with @<ip>:port in the
output).

Some apps give away the classpath, which this scripts catches in so-called 'Custom data'.");

  exit(0);
}

include("nmap.inc");

phase = 0;
if (defined_func("scan_phase")) {
  phase = scan_phase();
}

if (phase == 1) {
  argv = make_array();
  nmap_nse_register(script:"rmi-dumpregistry", args:argv);
} else if (phase == 2) {
    res = nmap_nse_get_results(script:"rmi-dumpregistry");
    foreach portspec (keys(res)) {
        output_banner = 'Result found by Nmap Security Scanner (rmi-dumpregistry.nse) http://nmap.org:\n\n';
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
