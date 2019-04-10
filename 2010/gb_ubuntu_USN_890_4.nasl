###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ubuntu_USN_890_4.nasl 8244 2017-12-25 07:29:28Z teissa $
#
# Ubuntu Update for python-xml vulnerabilities USN-890-4
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

include("revisions-lib.inc");
tag_insight = "USN-890-1 fixed vulnerabilities in Expat. This update provides the
  corresponding updates for PyXML.

  Original advisory details:
  
  Jukka Taimisto, Tero Rontti and Rauli Kaksonen discovered that Expat did
  not properly process malformed XML. If a user or application linked against
  Expat were tricked into opening a crafted XML file, an attacker could cause
  a denial of service via application crash. (CVE-2009-2625, CVE-2009-3720)
  
  It was discovered that Expat did not properly process malformed UTF-8
  sequences. If a user or application linked against Expat were tricked into
  opening a crafted XML file, an attacker could cause a denial of service via
  application crash. (CVE-2009-3560)";

tag_summary = "Ubuntu Update for Linux kernel vulnerabilities USN-890-4";
tag_affected = "python-xml vulnerabilities on Ubuntu 6.06 LTS";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name: "URL" , value: "http://www.ubuntu.com/usn/usn-890-4/");
  script_oid("1.3.6.1.4.1.25623.1.0.840380");
  script_version("$Revision: 8244 $");
  script_tag(name:"last_modification", value:"$Date: 2017-12-25 08:29:28 +0100 (Mon, 25 Dec 2017) $");
  script_tag(name:"creation_date", value:"2010-01-29 14:09:25 +0100 (Fri, 29 Jan 2010)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_xref(name: "USN", value: "890-4");
  script_cve_id("CVE-2009-3560", "CVE-2009-3720", "CVE-2009-2625");
  script_name("Ubuntu Update for python-xml vulnerabilities USN-890-4");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
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

if(release == "UBUNTU6.06 LTS")
{

  if ((res = isdpkgvuln(pkg:"python2.4-xml", ver:"0.8.4-1ubuntu3.1", rls:"UBUNTU6.06 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"python-xml", ver:"0.8.4-1ubuntu3.1", rls:"UBUNTU6.06 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"xbel-utils", ver:"0.8.4-1ubuntu3.1", rls:"UBUNTU6.06 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"xbel", ver:"0.8.4-1ubuntu3.1", rls:"UBUNTU6.06 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
