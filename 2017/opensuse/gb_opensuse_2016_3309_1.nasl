###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2016_3309_1.nasl 12381 2018-11-16 11:16:30Z cfischer $
#
# SuSE Update for roundcubemail openSUSE-SU-2016:3309-1 (roundcubemail)
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2017 Greenbone Networks GmbH, http://www.greenbone.net
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

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.851462");
  script_version("$Revision: 12381 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-16 12:16:30 +0100 (Fri, 16 Nov 2018) $");
  script_tag(name:"creation_date", value:"2017-01-05 12:07:36 +0530 (Thu, 05 Jan 2017)");
  script_cve_id("CVE-2016-5103");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("SuSE Update for roundcubemail openSUSE-SU-2016:3309-1 (roundcubemail)");
  script_tag(name:"summary", value:"The remote host is missing an update for the 'roundcubemail'
  package(s) announced via the referenced advisory.");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"This update for roundcubemail fixes the following issues:

  - A maliciously crafted email could cause untrusted code to be executed
  (cross site scripting using $lt area href=javascript:... )
  (boo#982003, CVE-2016-5103)

  - Avoid HTML styles that could cause potential click jacking
  (boo#1001856)

  - A maliciously crafted FROM value could cause extra parameters to be
  passed to the sendmail command (boo#1012493)

  - Avoid sending completely empty text parts for multipart/alternative
  messages

  - Don't create multipart/alternative messages with empty text/plain part

  - Improved validation of FROM argument when sending mails");
  script_tag(name:"affected", value:"roundcubemail on openSUSE 13.1");
  script_tag(name:"solution", value:"Please install the updated packages.");

  script_xref(name:"openSUSE-SU", value:"2016:3309_1");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSE13\.1");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);
res = "";

if(release == "openSUSE13.1")
{

  if ((res = isrpmvuln(pkg:"roundcubemail", rpm:"roundcubemail~1.0.9~2.36.1", rls:"openSUSE13.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
