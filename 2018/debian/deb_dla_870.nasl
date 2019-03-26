###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_dla_870.nasl 14270 2019-03-18 14:24:29Z cfischer $
#
# Auto-generated from advisory DLA 870-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.890870");
  script_version("$Revision: 14270 $");
  script_cve_id("CVE-2017-6435", "CVE-2017-6436", "CVE-2017-6439");
  script_name("Debian LTS Advisory ([SECURITY] [DLA 870-1] libplist security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-18 15:24:29 +0100 (Mon, 18 Mar 2019) $");
  script_tag(name:"creation_date", value:"2018-01-12 00:00:00 +0100 (Fri, 12 Jan 2018)");
  script_tag(name:"cvss_base", value:"1.9");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:N/I:N/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2017/03/msg00028.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB7");
  script_tag(name:"affected", value:"libplist on Debian Linux");
  script_tag(name:"solution", value:"For Debian 7 'Wheezy', these problems have been fixed in version
1.8-1+deb7u3.

We recommend that you upgrade your libplist packages.");
  script_tag(name:"summary", value:"More vulnerabilities were discovered in libplist, a library for
reading and writing the Apple binary and XML property lists format.
A maliciously crafted plist file could cause a denial-of-service
(application crash) by triggering a heap-based buffer overflow or
memory allocation error in the parse_string_node function.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libplist++-dev", ver:"1.8-1+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libplist++1", ver:"1.8-1+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libplist-dbg", ver:"1.8-1+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libplist-dev", ver:"1.8-1+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libplist-doc", ver:"1.8-1+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libplist-utils", ver:"1.8-1+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libplist1", ver:"1.8-1+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"python-plist", ver:"1.8-1+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}