###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for PyXML CESA-2010:0002 centos4 x86_64
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
tag_insight = "PyXML provides XML libraries for Python. The distribution contains a
  validating XML parser, an implementation of the SAX and DOM programming
  interfaces, and an interface to the Expat parser.

  A buffer over-read flaw was found in the way PyXML's Expat parser handled
  malformed UTF-8 sequences when processing XML files. A specially-crafted
  XML file could cause Python applications using PyXML's Expat parser to
  crash while parsing the file. (CVE-2009-3720)
  
  This update makes PyXML use the system Expat library rather than its own
  internal copy; therefore, users must install the RHSA-2009:1625 expat
  update together with this PyXML update to resolve the CVE-2009-3720 issue.
  
  All PyXML users should upgrade to this updated package, which changes PyXML
  to use the system Expat library. After installing this update along with
  RHSA-2009:1625, applications using the PyXML library must be restarted for
  the update to take effect.";

tag_affected = "PyXML on CentOS 4";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "http://lists.centos.org/pipermail/centos-announce/2010-January/016408.html");
  script_oid("1.3.6.1.4.1.25623.1.0.880340");
  script_version("$Revision: 8440 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-17 08:58:46 +0100 (Wed, 17 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-01-19 08:58:46 +0100 (Tue, 19 Jan 2010)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_xref(name: "CESA", value: "2010:0002");
  script_cve_id("CVE-2009-3720");
  script_name("CentOS Update for PyXML CESA-2010:0002 centos4 x86_64");

  script_tag(name: "summary" , value: "Check for the Version of PyXML");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");


res = "";
if(release == NULL){
  exit(0);
}

if(release == "CentOS4")
{

  if ((res = isrpmvuln(pkg:"PyXML", rpm:"PyXML~0.8.3~6.el4_8.2", rls:"CentOS4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
