###############################################################################
# OpenVAS Vulnerability Test
#
# Solaris Update for emlxs 141876-06
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2010 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

tag_affected = "emlxs on solaris_5.10_sparc";
tag_insight = "The remote host is missing a patch containing a security fix,
  which affects the following component(s): 
  emlxs
  For more information please visit the below reference link.";
tag_solution = "Please Install the Updated Packages.";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.855896");
  script_version("$Revision: 8457 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-18 08:58:32 +0100 (Thu, 18 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-03-31 14:20:46 +0200 (Wed, 31 Mar 2010)");
  script_tag(name:"cvss_base", value:"4.4");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:P/I:P/A:P");
  script_xref(name: "SUNSolve", value: "141876-06");
  script_name("Solaris Update for emlxs 141876-06");

  script_xref(name : "URL" , value : "http://sunsolve.sun.com/search/document.do?assetkey=1-21-141876-06-1");

  script_tag(name: "summary" , value: "Check for the Version of emlxs");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Solaris Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/solosversion");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("solaris.inc");

release = get_kb_item("ssh/login/solosversion");

if(release == NULL){
  exit(0);
}

if(solaris_check_patch(release:"5.10", arch:"sparc", patch:"141876-06", package:"SUNWemlxu SUNWemlxs") < 0)
{
  security_message(0);
  exit(0);
}
