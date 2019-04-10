###############################################################################
# OpenVAS Vulnerability Test
#
# Solaris Update for se, acebus, pcf8574, pcf8591 and scsb 109815-23
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2009 Greenbone Networks GmbH, http://www.greenbone.net
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

tag_affected = "se, acebus, pcf8574, pcf8591 and scsb on solaris_5.8_sparc";
tag_insight = "The remote host is missing a patch containing a security fix,
  which affects the following component(s): 
  se, acebus, pcf8574, pcf8591 and scsb
  For more information please visit the below reference link.";
tag_solution = "Please Install the Updated Packages.";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.7.0.855318");
  script_version("$Revision: 5359 $");
  script_tag(name:"last_modification", value:"$Date: 2017-02-20 12:20:19 +0100 (Mon, 20 Feb 2017) $");
  script_tag(name:"creation_date", value:"2009-06-03 12:37:58 +0200 (Wed, 03 Jun 2009)");
  script_tag(name:"cvss_base", value:"4.4");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:P/I:P/A:P");
  script_xref(name: "SUNSolve", value: "109815-23");
  script_name( "Solaris Update for se, acebus, pcf8574, pcf8591 and scsb 109815-23");

  script_xref(name : "URL" , value : "http://sunsolve.sun.com/search/document.do?assetkey=1-21-109815-23-1");

  script_tag(name:"summary", value:"Check for the Version of se, acebus, pcf8574, pcf8591 and scsb");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2009 Greenbone Networks GmbH");
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

if(solaris_check_patch(release:"5.8", arch:"sparc", patch:"109815-23", package:"SUNWpdx SUNWcti2x.u SUNWcsr SUNWpd") < 0)
{
  security_message(0);
  exit(0);
}
