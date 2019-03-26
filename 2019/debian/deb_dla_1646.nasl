###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_dla_1646.nasl 14282 2019-03-18 14:55:18Z cfischer $
#
# Auto-generated from advisory DLA 1646-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2019 Greenbone Networks GmbH http://greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
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
  script_oid("1.3.6.1.4.1.25623.1.0.891646");
  script_version("$Revision: 14282 $");
  script_cve_id("CVE-2018-17958", "CVE-2018-19364", "CVE-2018-19489");
  script_name("Debian LTS Advisory ([SECURITY] [DLA 1646-1] qemu security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-18 15:55:18 +0100 (Mon, 18 Mar 2019) $");
  script_tag(name:"creation_date", value:"2019-01-30 00:00:00 +0100 (Wed, 30 Jan 2019)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2019/01/msg00023.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2019 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB8");
  script_tag(name:"affected", value:"qemu on Debian Linux");
  script_tag(name:"solution", value:"For Debian 8 'Jessie', these problems have been fixed in version
1:2.1+dfsg-12+deb8u9.

We recommend that you upgrade your qemu packages.");
  script_tag(name:"summary", value:"Several vulnerabilities were found in QEMU, a fast processor emulator:

CVE-2018-17958

The rtl8139 emulator is affected by an integer overflow and subsequent
buffer overflow. This vulnerability might be triggered by remote
attackers with crafted packets to perform denial of service (via OOB
stack buffer access).

CVE-2018-19364

The 9pfs subsystem is affected by a race condition allowing threads to
modify an fid path while it is being accessed by another thread,
leading to (for example) a use-after-free outcome. This vulnerability
might be triggered by local attackers to perform denial of service.

CVE-2018-19489

The 9pfs subsystem is affected by a race condition during file
renaming. This vulnerability might be triggered by local attackers to
perform denial of service.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"qemu", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-guest-agent", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-kvm", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-arm", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-common", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-mips", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-misc", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-ppc", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-sparc", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-x86", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-user", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-user-binfmt", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-user-static", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-utils", ver:"1:2.1+dfsg-12+deb8u9", rls:"DEB8")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}