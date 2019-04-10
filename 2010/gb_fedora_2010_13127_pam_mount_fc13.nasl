###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for pam_mount FEDORA-2010-13127
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
tag_insight = "This module is aimed at environments with central file servers that a
  user wishes to mount on login and unmount on logout, such as
  (semi-)diskless stations where many users can logon.

  The module also supports mounting local filesystems of any kind the
  normal mount utility supports, with extra code to make sure certain
  volumes are set up properly because often they need more than just a
  mount call, such as encrypted volumes. This includes SMB/CIFS, NCP,
  davfs2, FUSE, losetup crypto, dm-crypt/cryptsetup and truecrypt.

  If you intend to use pam_mount to protect volumes on your computer
  using an encrypted filesystem system, please know that there are many
  other issues you need to consider in order to protect your data.  For
  example, you probably want to disable or encrypt your swap partition.
  Don't assume a system is secure without carefully considering
  potential threats.";
tag_solution = "Please Install the Updated Packages.";

tag_affected = "pam_mount on Fedora 13";


if(description)
{
  script_xref(name : "URL" , value : "http://lists.fedoraproject.org/pipermail/package-announce/2010-September/046999.html");
  script_oid("1.3.6.1.4.1.25623.1.0.862377");
  script_version("$Revision: 8469 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-19 08:58:21 +0100 (Fri, 19 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-09-07 15:09:12 +0200 (Tue, 07 Sep 2010)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_xref(name: "FEDORA", value: "2010-13127");
  script_cve_id("CVE-2010-2947");
  script_name("Fedora Update for pam_mount FEDORA-2010-13127");

  script_tag(name: "summary" , value: "Check for the Version of pam_mount");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");
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

if(release == "FC13")
{

  if ((res = isrpmvuln(pkg:"pam_mount", rpm:"pam_mount~2.5~1.fc13", rls:"FC13")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
