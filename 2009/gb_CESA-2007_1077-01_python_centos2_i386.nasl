###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for python CESA-2007:1077-01 centos2 i386
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
tag_insight = "Python is an interpreted, interactive, object-oriented programming
  language.

  An integer overflow flaw was discovered in the way Python's pcre module
  handled certain regular expressions. If a Python application used the pcre
  module to compile and execute untrusted regular expressions, it may be
  possible to cause the application to crash, or allow arbitrary code
  execution with the privileges of the Python interpreter. (CVE-2006-7228)
  
  A flaw was discovered in the strxfrm() function of Python's locale module.
  Strings generated by this function were not properly NULL-terminated, which
  could possibly cause disclosure of data stored in the memory of a Python
  application using this function. (CVE-2007-2052)
  
  Users of Python are advised to upgrade to these updated packages, which
  contain backported patches to resolve these issues.";

tag_affected = "python on CentOS 2";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "http://lists.centos.org/pipermail/centos-announce/2007-December/014500.html");
  script_oid("1.3.6.1.4.1.25623.7.0.880319");
  script_version("$Revision: 6651 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-10 13:45:21 +0200 (Mon, 10 Jul 2017) $");
  script_tag(name:"creation_date", value:"2009-02-27 08:31:09 +0100 (Fri, 27 Feb 2009)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_xref(name: "CESA", value: "2007:1077-01");
  script_cve_id("CVE-2006-7228", "CVE-2007-2052");
  script_name( "CentOS Update for python CESA-2007:1077-01 centos2 i386");

  script_tag(name:"summary", value:"Check for the Version of python");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2009 Greenbone Networks GmbH");
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

if(release == "CentOS2")
{

  if ((res = isrpmvuln(pkg:"python", rpm:"python~1.5.2~43.72.2", rls:"CentOS2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-devel", rpm:"python-devel~1.5.2~43.72.2", rls:"CentOS2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-docs", rpm:"python-docs~1.5.2~43.72.2", rls:"CentOS2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-tools", rpm:"python-tools~1.5.2~43.72.2", rls:"CentOS2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"tkinter", rpm:"tkinter~1.5.2~43.72.2", rls:"CentOS2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
