###############################################################################
# OpenVAS Vulnerability Test
#
# Mandriva Update for webkit MDVA-2010:046 (webkit)
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
tag_affected = "webkit on Mandriva Linux 2010.0,
  Mandriva Linux 2010.0/X86_64";
tag_insight = "This update brings a new stable version of webkitgtk, and solves the
  problem with processors without the SSE2 instruction set. It is easy to
  see if you are suffering from this bug, just try to open some webpage
  on epiphany Web broswser, it will crash with old webkit version.";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "http://lists.mandriva.com/security-announce/2010-01/msg00083.php");
  script_oid("1.3.6.1.4.1.25623.1.0.830848");
  script_version("$Revision: 8296 $");
  script_cve_id("CVE-2010-0788");
  script_tag(name:"last_modification", value:"$Date: 2018-01-05 08:28:01 +0100 (Fri, 05 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-01-29 14:09:25 +0100 (Fri, 29 Jan 2010)");
  script_tag(name:"cvss_base", value:"4.4");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:P/I:P/A:P");
  script_xref(name: "MDVA", value: "2010:046");
  script_name("Mandriva Update for webkit MDVA-2010:046 (webkit)");

  script_tag(name: "summary" , value: "Check for the Version of webkit");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Mandrake Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/mandriva_mandrake_linux", "ssh/login/release");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "solution" , value : tag_solution);
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

if(release == "MNDK_2010.0")
{

  if ((res = isrpmvuln(pkg:"libwebkitgtk1.0_2", rpm:"libwebkitgtk1.0_2~1.1.15.1~1.2.2mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libwebkitgtk1.0-devel", rpm:"libwebkitgtk1.0-devel~1.1.15.1~1.2.2mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"webkit1.0", rpm:"webkit1.0~1.1.15.1~1.2.2mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"webkit1.0-webinspector", rpm:"webkit1.0-webinspector~1.1.15.1~1.2.2mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"webkit", rpm:"webkit~1.1.15.1~1.2.2mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"webkit-gtklauncher", rpm:"webkit-gtklauncher~1.1.15.1~1.2.2mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"webkit-jsc", rpm:"webkit-jsc~1.1.15.1~1.2.2mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64webkitgtk1.0_2", rpm:"lib64webkitgtk1.0_2~1.1.15.1~1.2.2mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"lib64webkitgtk1.0-devel", rpm:"lib64webkitgtk1.0-devel~1.1.15.1~1.2.2mdv2010.0", rls:"MNDK_2010.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
