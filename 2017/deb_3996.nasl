###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_3996.nasl 14280 2019-03-18 14:50:45Z cfischer $
#
# Auto-generated from advisory DSA 3996-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2017 Greenbone Networks GmbH http://greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.703996");
  script_version("$Revision: 14280 $");
  script_cve_id("CVE-2017-14054", "CVE-2017-14055", "CVE-2017-14056", "CVE-2017-14057", "CVE-2017-14058", "CVE-2017-14059", "CVE-2017-14169", "CVE-2017-14170", "CVE-2017-14171", "CVE-2017-14222", "CVE-2017-14223", "CVE-2017-14225", "CVE-2017-14767");
  script_name("Debian Security Advisory DSA 3996-1 (ffmpeg - security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-18 15:50:45 +0100 (Mon, 18 Mar 2019) $");
  script_tag(name:"creation_date", value:"2017-10-10 00:00:00 +0200 (Tue, 10 Oct 2017)");
  script_tag(name:"cvss_base", value:"7.1");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:N/A:C");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2017/dsa-3996.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2017 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB9");
  script_tag(name:"affected", value:"ffmpeg on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (stretch), these problems have been fixed in
version 7:3.2.8-1~deb9u1.

We recommend that you upgrade your ffmpeg packages.");
  script_tag(name:"summary", value:"Several vulnerabilities have been discovered in the FFmpeg multimedia
framework, which could result in denial of service or potentially the
execution of arbitrary code if malformed Real, MV, RL2, ASF, Apple HLS,
Phantom Cine, MXF, NSV, MOV or RTP H.264 files/streams are processed.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"ffmpeg", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"ffmpeg-doc", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libav-tools", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavcodec-dev", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavcodec-extra", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavcodec-extra57", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavcodec57", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavdevice-dev", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavdevice57", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavfilter-dev", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavfilter-extra", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavfilter-extra6", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavfilter6", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavformat-dev", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavformat57", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavresample-dev", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavresample3", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavutil-dev", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libavutil55", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libpostproc-dev", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libpostproc54", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libswresample-dev", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libswresample2", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libswscale-dev", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libswscale4", ver:"7:3.2.8-1~deb9u1", rls:"DEB9")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}