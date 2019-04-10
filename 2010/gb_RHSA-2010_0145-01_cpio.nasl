###############################################################################
# OpenVAS Vulnerability Test
#
# RedHat Update for cpio RHSA-2010:0145-01
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
tag_insight = "GNU cpio copies files into or out of a cpio or tar archive.

  A heap-based buffer overflow flaw was found in the way cpio expanded
  archive files. If a user were tricked into expanding a specially-crafted
  archive, it could cause the cpio executable to crash or execute arbitrary
  code with the privileges of the user running cpio. (CVE-2010-0624)
  
  Red Hat would like to thank Jakob Lell for responsibly reporting the
  CVE-2010-0624 issue.
  
  A stack-based buffer overflow flaw was found in the way cpio expanded large
  archive files. If a user expanded a specially-crafted archive, it could
  cause the cpio executable to crash. This issue only affected 64-bit
  platforms. (CVE-2005-4268)
  
  Users of cpio are advised to upgrade to this updated package, which
  contains backported patches to correct these issues.";

tag_affected = "cpio on Red Hat Enterprise Linux AS version 3,
  Red Hat Enterprise Linux ES version 3,
  Red Hat Enterprise Linux WS version 3";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "https://www.redhat.com/archives/rhsa-announce/2010-March/msg00010.html");
  script_oid("1.3.6.1.4.1.25623.1.0.870226");
  script_version("$Revision: 8495 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-23 08:57:49 +0100 (Tue, 23 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-03-22 11:34:53 +0100 (Mon, 22 Mar 2010)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_xref(name: "RHSA", value: "2010:0145-01");
  script_cve_id("CVE-2005-4268", "CVE-2010-0624");
  script_name("RedHat Update for cpio RHSA-2010:0145-01");

  script_tag(name: "summary" , value: "Check for the Version of cpio");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Red Hat Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/rhel", "ssh/login/rpms");
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

if(release == "RHENT_3")
{

  if ((res = isrpmvuln(pkg:"cpio", rpm:"cpio~2.5~6.RHEL3", rls:"RHENT_3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"cpio-debuginfo", rpm:"cpio-debuginfo~2.5~6.RHEL3", rls:"RHENT_3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
