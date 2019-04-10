###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ubuntu_USN_410_2.nasl 7969 2017-12-01 09:23:16Z santu $
#
# Ubuntu Update for tetex-bin vulnerability USN-410-2
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

include("revisions-lib.inc");
tag_insight = "USN-410-1 fixed vulnerabilities in the poppler PDF loader library.  This
  update provides the corresponding updates for a copy of this code in
  tetex-bin in Ubuntu 5.10.  Versions of tetex-bin after Ubuntu 5.10 use
  poppler directly and do not need a separate update.

  Original advisory details:
  
  The poppler PDF loader library did not limit the recursion depth of
  the page model tree. By tricking a user into opening a specially
  crafter PDF file, this could be exploited to trigger an infinite loop
  and eventually crash an application that uses this library.";

tag_summary = "Ubuntu Update for Linux kernel vulnerabilities USN-410-2";
tag_affected = "tetex-bin vulnerability on Ubuntu 5.10";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name: "URL" , value: "http://www.ubuntu.com/usn/usn-410-2/");
  script_oid("1.3.6.1.4.1.25623.7.0.840035");
  script_version("$Revision: 7969 $");
  script_tag(name:"last_modification", value:"$Date: 2017-12-01 10:23:16 +0100 (Fri, 01 Dec 2017) $");
  script_tag(name:"creation_date", value:"2009-03-23 10:55:18 +0100 (Mon, 23 Mar 2009)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_xref(name: "USN", value: "410-2");
  script_cve_id("CVE-2007-0104");
  script_name( "Ubuntu Update for tetex-bin vulnerability USN-410-2");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2009 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages");
  script_tag(name : "summary" , value : tag_summary);
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("pkg-lib-deb.inc");

release = get_kb_item("ssh/login/release");


res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU5.10")
{

  if ((res = isdpkgvuln(pkg:"libkpathsea-dev", ver:"2.0.2-30ubuntu3.6", rls:"UBUNTU5.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"libkpathsea3", ver:"2.0.2-30ubuntu3.6", rls:"UBUNTU5.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"tetex-bin", ver:"2.0.2-30ubuntu3.6", rls:"UBUNTU5.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
