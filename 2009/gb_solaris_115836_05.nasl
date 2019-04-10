###############################################################################
# OpenVAS Vulnerability Test
#
# Solaris Update for Ghostscript 115836-05
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

tag_affected = "Ghostscript on solaris_5.9_x86";
tag_insight = "The remote host is missing a patch containing a security fix,
  which affects the following component(s): 
  Ghostscript
  For more information please visit the below reference link.";
tag_solution = "Please Install the Updated Packages.";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.7.0.855758");
  script_version("$Revision: 5359 $");
  script_tag(name:"last_modification", value:"$Date: 2017-02-20 12:20:19 +0100 (Mon, 20 Feb 2017) $");
  script_tag(name:"creation_date", value:"2009-10-13 15:16:45 +0200 (Tue, 13 Oct 2009)");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_xref(name: "SUNSolve", value: "115836-05");
  script_cve_id("CVE-2009-0583", "CVE-2009-0584", "CVE-2009-0792", "CVE-2008-6679", "CVE-2009-0196", "CVE-2007-6725");
  script_name("Solaris Update for Ghostscript 115836-05");

  script_xref(name : "URL" , value : "http://sunsolve.sun.com/search/document.do?assetkey=1-21-115836-05-1");

  script_tag(name:"summary", value:"Check for the Version of Ghostscript");
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

if(solaris_check_patch(release:"5.9", arch:"i386", patch:"115836-05", package:"SUNWespgs SUNWffiltersu SUNWa2psu SUNWgscr SUNWhpijs SUNWespgsS SUNWa2psr SUNWgscrS") < 0)
{
  security_message(0);
  exit(0);
}