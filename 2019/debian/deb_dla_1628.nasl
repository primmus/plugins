###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_dla_1628.nasl 14274 2019-03-18 14:38:37Z cfischer $
#
# Auto-generated from advisory DLA 1628-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.891628");
  script_version("$Revision: 14274 $");
  script_cve_id("CVE-2018-18873", "CVE-2018-19139", "CVE-2018-19539", "CVE-2018-19540", "CVE-2018-19541",
                "CVE-2018-19542", "CVE-2018-20570", "CVE-2018-20584", "CVE-2018-20622");
  script_name("Debian LTS Advisory ([SECURITY] [DLA 1628-1] jasper security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-18 15:38:37 +0100 (Mon, 18 Mar 2019) $");
  script_tag(name:"creation_date", value:"2019-01-03 00:00:00 +0100 (Thu, 03 Jan 2019)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2019/01/msg00003.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2019 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB8");
  script_tag(name:"affected", value:"jasper on Debian Linux");
  script_tag(name:"solution", value:"For Debian 8 'Jessie', these problems have been fixed in version
1.900.1-debian1-2.4+deb8u5.

We recommend that you upgrade your jasper packages.");
  script_tag(name:"summary", value:"Multiple issues were found in the JasPer JPEG-2000 library that could
lead to a denial-of-service (application crash), memory leaks and
potentially the execution of arbitrary code if a malformed image file
is processed.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libjasper-dev", ver:"1.900.1-debian1-2.4+deb8u5", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libjasper-runtime", ver:"1.900.1-debian1-2.4+deb8u5", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libjasper1", ver:"1.900.1-debian1-2.4+deb8u5", rls:"DEB8")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}