###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2018_4140_1_deprecated.nasl 13940 2019-02-28 14:10:38Z cfischer $
#
# SuSE Update for ghostscript openSUSE-SU-2018:4140-1 (ghostscript)
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2018 Greenbone Networks GmbH, http://www.greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
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
  script_oid("1.3.6.1.4.1.25623.1.0.852190");
  script_version("$Revision: 13940 $");
  script_tag(name:"deprecated", value:TRUE);
  script_cve_id("CVE-2018-17183", "CVE-2018-17961", "CVE-2018-18073",
                  "CVE-2018-18284", "CVE-2018-19409", "CVE-2018-19475", "CVE-2018-19476",
                "CVE-2018-19477");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"last_modification", value:"$Date: 2019-02-28 15:10:38 +0100 (Thu, 28 Feb 2019) $");
  script_tag(name:"creation_date", value:"2018-12-18 07:41:34 +0100 (Tue, 18 Dec 2018)");
  script_name("SuSE Update for ghostscript openSUSE-SU-2018:4140-1 (ghostscript)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSELeap42\.3");

  script_xref(name:"openSUSE-SU", value:"2018:4140_1");
  script_xref(name:"URL", value:"http://lists.opensuse.org/opensuse-security-announce/2018-12/msg00038.html");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'ghostscript'
  package(s) announced via the openSUSE-SU-2018:4140_1 advisory.
  This NVT has been replaced by OID:1.3.6.1.4.1.25623.1.0.814566");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for ghostscript to version 9.26
  fixes the following issues:
  Security issues fixed:

  - CVE-2018-19475: Fixed bypass of an intended access restriction in
  psi/zdevice2.c (bsc#1117327)

  - CVE-2018-19476: Fixed bypass of an intended access restriction in
  psi/zicc.c (bsc#1117313)

  - CVE-2018-19477: Fixed bypass of an intended access restriction in
  psi/zfjbig2.c (bsc#1117274)

  - CVE-2018-19409: Check if another device is used correctly in
  LockSafetyParams (bsc#1117022)

  - CVE-2018-18284: Fixed potential sandbox escape through 1Policy operator
  (bsc#1112229)

  - CVE-2018-18073: Fixed leaks through operator in saved execution stacks
  (bsc#1111480)

  - CVE-2018-17961: Fixed a -dSAFER sandbox escape by bypassing executeonly
  (bsc#1111479)

  - CVE-2018-17183: Fixed a potential code injection by specially crafted
  PostScript files (bsc#1109105)

  Version update to 9.26 (bsc#1117331):

  This update was imported from the SUSE:SLE-12:Update update project.


  Patch Instructions:

  To install this openSUSE Security Update use the SUSE recommended
  installation methods
  like YaST online_update or 'zypper patch'.

  Alternatively you can run the command listed for your product:

  - openSUSE Leap 42.3:

  zypper in -t patch openSUSE-2018-1556=1");

  script_tag(name:"affected", value:"ghostscript on openSUSE Leap 42.3.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}
exit(66); ## This NVT is deprecated as addressed in OID:1.3.6.1.4.1.25623.1.0.814566
include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "openSUSELeap42.3")
{

  if ((res = isrpmvuln(pkg:"ghostscript", rpm:"ghostscript~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"ghostscript-debuginfo", rpm:"ghostscript-debuginfo~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"ghostscript-debugsource", rpm:"ghostscript-debugsource~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"ghostscript-devel", rpm:"ghostscript-devel~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"ghostscript-mini", rpm:"ghostscript-mini~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"ghostscript-mini-debuginfo", rpm:"ghostscript-mini-debuginfo~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"ghostscript-mini-debugsource", rpm:"ghostscript-mini-debugsource~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"ghostscript-mini-devel", rpm:"ghostscript-mini-devel~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"ghostscript-x11", rpm:"ghostscript-x11~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"ghostscript-x11-debuginfo", rpm:"ghostscript-x11-debuginfo~9.26~14.12.1", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libspectre-debugsource", rpm:"libspectre-debugsource~0.2.7~17.4.2", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libspectre-devel", rpm:"libspectre-devel~0.2.7~17.4.2", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libspectre1", rpm:"libspectre1~0.2.7~17.4.2", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"libspectre1-debuginfo", rpm:"libspectre1-debuginfo~0.2.7~17.4.2", rls:"openSUSELeap42.3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
