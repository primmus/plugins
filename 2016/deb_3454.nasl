# OpenVAS Vulnerability Test
# $Id: deb_3454.nasl 14279 2019-03-18 14:48:34Z cfischer $
# Auto-generated from advisory DSA 3454-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2016 Greenbone Networks GmbH http://greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.703454");
  script_version("$Revision: 14279 $");
  script_cve_id("CVE-2015-5307", "CVE-2015-8104", "CVE-2016-0495", "CVE-2016-0592");
  script_name("Debian Security Advisory DSA 3454-1 (virtualbox - security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-18 15:48:34 +0100 (Mon, 18 Mar 2019) $");
  script_tag(name:"creation_date", value:"2016-01-27 00:00:00 +0100 (Wed, 27 Jan 2016)");
  script_tag(name:"cvss_base", value:"4.9");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:N/I:N/A:C");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2016/dsa-3454.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2016 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(9|8)");
  script_tag(name:"affected", value:"virtualbox on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (jessie),
these problems have been fixed in version 4.3.36-dfsg-1+deb8u1.

For the testing distribution (stretch), these problems have been fixed
in version 5.0.14-dfsg-1.

For the unstable distribution (sid), these problems have been fixed in
version 5.0.14-dfsg-1.

We recommend that you upgrade your virtualbox packages.");
  script_tag(name:"summary", value:"Multiple vulnerabilities have
been discovered in VirtualBox, an x86 virtualisation solution.

Upstream support for the 4.1 release series has ended and since no
information is available which would allow backports of isolated security
fixes, security support for virtualbox in wheezy/oldstable needed to be
ended as well.
If you use virtualbox with externally procured VMs (e.g. through vagrant)
we advise you to update to Debian jessie.");
  script_tag(name:"vuldetect", value:"This check tests the installed
software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"virtualbox", ver:"5.0.14-dfsg-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-dbg", ver:"5.0.14-dfsg-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-dkms", ver:"5.0.14-dfsg-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-guest-dkms", ver:"5.0.14-dfsg-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-guest-source", ver:"5.0.14-dfsg-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-guest-utils", ver:"5.0.14-dfsg-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-guest-x11", ver:"5.0.14-dfsg-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-qt", ver:"5.0.14-dfsg-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-source", ver:"5.0.14-dfsg-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox", ver:"4.3.36-dfsg-1+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-dbg", ver:"4.3.36-dfsg-1+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-dkms", ver:"4.3.36-dfsg-1+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-guest-dkms", ver:"4.3.36-dfsg-1+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-guest-source", ver:"4.3.36-dfsg-1+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-guest-utils", ver:"4.3.36-dfsg-1+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-guest-x11", ver:"4.3.36-dfsg-1+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-qt", ver:"4.3.36-dfsg-1+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"virtualbox-source", ver:"4.3.36-dfsg-1+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}