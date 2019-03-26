###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_nmap_ldap_brute_net.nasl 12117 2018-10-26 10:50:36Z cfischer $
#
# Autogenerated NSE wrapper
#
# Authors:
# NSE-Script: Patrik Karlsson
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
  script_oid("1.3.6.1.4.1.25623.1.0.104082");
  script_version("$Revision: 12117 $");
  script_tag(name:"last_modification", value:"$Date: 2018-10-26 12:50:36 +0200 (Fri, 26 Oct 2018) $");
  script_tag(name:"creation_date", value:"2011-06-01 16:32:46 +0200 (Wed, 01 Jun 2011)");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_name("Nmap NSE net: ldap-brute");
  script_category(ACT_INIT);
  script_tag(name:"qod_type", value:"remote_analysis");
  script_copyright("NSE-Script: The Nmap Security Scanner; NASL-Wrapper: Greenbone Networks GmbH");
  script_family("Nmap NSE net");
  script_dependencies("nmap_nse_net.nasl");
  script_mandatory_keys("Tools/Launch/nmap_nse_net");

  script_add_preference(name:"ldap.base", value:"", type:"entry");
  script_add_preference(name:"passdb", value:"", type:"entry");
  script_add_preference(name:"userdb", value:"", type:"entry");
  script_add_preference(name:"unpwdb.passlimit", value:"", type:"entry");
  script_add_preference(name:"unpwdb.userlimit", value:"", type:"entry");
  script_add_preference(name:"unpwdb.timelimit", value:"", type:"entry");

  script_tag(name:"summary", value:"Attempts to brute-force LDAP authentication. By default it uses the built-in username and password
lists. In order to use your own lists use the 'userdb' and 'passdb' script
arguments.

This script does not make any attempt to prevent account lockout! If the number of passwords in the
dictionary exceed the amount of allowed tries, accounts will be locked out. This usually happens
very quickly.

Authenticating against Active Directory using LDAP does not use the Windows user name but the user
accounts distinguished name. LDAP on Windows 2003 allows authentication using a simple user name
rather than using the fully distinguished name. E.g., 'Patrik Karlsson' vs. 'cn=Patrik
Karlsson, cn=Users, dc=cqure, dc=net' This type of authentication is not supported on e.g. OpenLDAP.

This script uses some AD-specific support and optimizations: * LDAP on Windows 2003 reports
different error messages depending on whether an account exists or not. If the script receives an
error indicating that the username does not exist it simply stops guessing passwords for this
account and moves on to the next. * The script attempts to authenticate with the username only if no
LDAP base is specified. The benefit of authenticating this way is that the LDAP path of each account
does not need to be known in advance as it's looked up by the server.

SYNTAX:

ldap.base:  If set, the script will use it as a base for the password
guessing attempts. If unset the user list must either contain the
distinguished name of each user or the server must support
authentication using a simple user name. See the AD discussion in the description.

passdb:  The filename of an alternate password database.

userdb:  The filename of an alternate username database.

unpwdb.passlimit:  The maximum number of passwords
'passwords' will return (default unlimited).

unpwdb.userlimit:  The maximum number of usernames
'usernames' will return (default unlimited).

unpwdb.timelimit:  The maximum amount of time that any iterator will run
before stopping. The value is in seconds by default and you can follow it
with 'ms', 's', 'm', or 'h' for
milliseconds, seconds, minutes, or hours. For example,
'unpwdb.timelimit=30m' or 'unpwdb.timelimit=.5h' for
30 minutes. The default depends on the timing template level (see the module
description). Use the value '0' to disable the time limit.");

  script_tag(name:"solution_type", value:"Mitigation");

  exit(0);
}

include("nmap.inc");

# The corresponding NSE script doesn't belong to the 'safe' category
if (safe_checks()) exit(0);

phase = 0;
if (defined_func("scan_phase")) {
  phase = scan_phase();
}

if (phase == 1) {
    argv = make_array();

    pref = script_get_preference("ldap.base");
    if (!isnull(pref) && pref != "") {
        argv["ldap.base"] = string('"', pref, '"');
    }
    pref = script_get_preference("passdb");
    if (!isnull(pref) && pref != "") {
        argv["passdb"] = string('"', pref, '"');
    }
    pref = script_get_preference("userdb");
    if (!isnull(pref) && pref != "") {
        argv["userdb"] = string('"', pref, '"');
    }
    pref = script_get_preference("unpwdb.passlimit");
    if (!isnull(pref) && pref != "") {
        argv["unpwdb.passlimit"] = string('"', pref, '"');
    }
    pref = script_get_preference("unpwdb.userlimit");
    if (!isnull(pref) && pref != "") {
        argv["unpwdb.userlimit"] = string('"', pref, '"');
    }
    pref = script_get_preference("unpwdb.timelimit");
    if (!isnull(pref) && pref != "") {
        argv["unpwdb.timelimit"] = string('"', pref, '"');
    }
    nmap_nse_register(script:"ldap-brute", args:argv);
} else if (phase == 2) {
    res = nmap_nse_get_results(script:"ldap-brute");
    foreach portspec (keys(res)) {
        output_banner = 'Result found by Nmap Security Scanner (ldap-brute.nse) http://nmap.org:\n\n';
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
