###############################################################################
# OpenVAS Vulnerability Test
#
# Mandriva Update for util-linux MDKSA-2007:053 (util-linux)
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
tag_insight = "Umount allows local users to trigger a NULL dereference and application
  crash by invoking the program with a pathname for a USB pen drive that
  was mounted and then physically removed, which might allow the users to
  obtain sensitive information, including core file contents.

  Updated packages have been patched to address this issue.";

tag_affected = "util-linux on Mandriva Linux 2006.0,
  Mandriva Linux 2006.0/X86_64,
  Mandriva Linux 2007.0,
  Mandriva Linux 2007.0/X86_64";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "http://lists.mandriva.com/security-announce/2007-03/msg00005.php");
  script_oid("1.3.6.1.4.1.25623.7.0.830143");
  script_version("$Revision: 6568 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-06 15:04:21 +0200 (Thu, 06 Jul 2017) $");
  script_tag(name:"creation_date", value:"2009-04-09 13:53:01 +0200 (Thu, 09 Apr 2009)");
  script_tag(name:"cvss_base", value:"1.9");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:P/I:N/A:N");
  script_xref(name: "MDKSA", value: "2007:053");
  script_cve_id("CVE-2007-0822");
  script_name( "Mandriva Update for util-linux MDKSA-2007:053 (util-linux)");

  script_tag(name:"summary", value:"Check for the Version of util-linux");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2009 Greenbone Networks GmbH");
  script_family("Mandrake Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/mandriva_mandrake_linux", "ssh/login/release");
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

if(release == "MNDK_2007.0")
{

  if ((res = isrpmvuln(pkg:"losetup", rpm:"losetup~2.12r~8.1mdv2007.0", rls:"MNDK_2007.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"mount", rpm:"mount~2.12r~8.1mdv2007.0", rls:"MNDK_2007.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"util-linux", rpm:"util-linux~2.12r~8.1mdv2007.0", rls:"MNDK_2007.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}


if(release == "MNDK_2006.0")
{

  if ((res = isrpmvuln(pkg:"losetup", rpm:"losetup~2.12q~7.1.20060mdk", rls:"MNDK_2006.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"mount", rpm:"mount~2.12q~7.1.20060mdk", rls:"MNDK_2006.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"util-linux", rpm:"util-linux~2.12q~7.1.20060mdk", rls:"MNDK_2006.0")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
