###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2017_0071_1.nasl 12381 2018-11-16 11:16:30Z cfischer $
#
# SuSE Update for gstreamer-plugins-good openSUSE-SU-2017:0071-1 (gstreamer-plugins-good)
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
  script_oid("1.3.6.1.4.1.25623.1.0.851498");
  script_version("$Revision: 12381 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-16 12:16:30 +0100 (Fri, 16 Nov 2018) $");
  script_tag(name:"creation_date", value:"2017-02-22 15:15:31 +0100 (Wed, 22 Feb 2017)");
  script_cve_id("CVE-2016-9634", "CVE-2016-9635", "CVE-2016-9636", "CVE-2016-9807",
                "CVE-2016-9808", "CVE-2016-9810");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("SuSE Update for gstreamer-plugins-good openSUSE-SU-2017:0071-1 (gstreamer-plugins-good)");
  script_tag(name:"summary", value:"The remote host is missing an update for the 'gstreamer-plugins-good'
  package(s) announced via the referenced advisory.");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"This update for gstreamer-plugins-good fixes the following security issues:

  - CVE-2016-9807: Flic decoder invalid read could lead to crash.
  (bsc#1013655)

  - CVE-2016-9634: Flic out-of-bounds write could lead to code execution.
  (bsc#1012102)

  - CVE-2016-9635: Flic out-of-bounds write could lead to code execution.
  (bsc#1012103)

  - CVE-2016-9635: Flic out-of-bounds write could lead to code execution.
  (bsc#1012104)

  - CVE-2016-9808: A maliciously crafted flic file can still cause invalid
  memory accesses. (bsc#1013653)

  - CVE-2016-9810: A maliciously crafted flic file can still cause invalid
  memory accesses. (bsc#1013663)

  This update was imported from the SUSE:SLE-12-SP2:Update update project.");
  script_tag(name:"affected", value:"gstreamer-plugins-good on openSUSE Leap 42.2");
  script_tag(name:"solution", value:"Please install the updated packages.");

  script_xref(name:"openSUSE-SU", value:"2017:0071_1");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSELeap42\.2");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);
res = "";

if(release == "openSUSELeap42.2")
{

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good", rpm:"gstreamer-plugins-good~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-debuginfo", rpm:"gstreamer-plugins-good-debuginfo~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-debugsource", rpm:"gstreamer-plugins-good-debugsource~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-doc", rpm:"gstreamer-plugins-good-doc~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-extra", rpm:"gstreamer-plugins-good-extra~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-extra-debuginfo", rpm:"gstreamer-plugins-good-extra-debuginfo~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-32bit", rpm:"gstreamer-plugins-good-32bit~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-debuginfo-32bit", rpm:"gstreamer-plugins-good-debuginfo-32bit~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-extra-32bit", rpm:"gstreamer-plugins-good-extra-32bit~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-extra-debuginfo-32bit", rpm:"gstreamer-plugins-good-extra-debuginfo-32bit~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"gstreamer-plugins-good-lang", rpm:"gstreamer-plugins-good-lang~1.8.3~3.1", rls:"openSUSELeap42.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
