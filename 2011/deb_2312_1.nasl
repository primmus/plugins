# OpenVAS Vulnerability Test
# $Id: deb_2312_1.nasl 14275 2019-03-18 14:39:45Z cfischer $
# Description: Auto-generated from advisory DSA 2312-1 (iceape)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2011 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# or at your option, GNU General Public License version 3,
# as published by the Free Software Foundation
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
  script_oid("1.3.6.1.4.1.25623.1.0.70401");
  script_version("$Revision: 14275 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-18 15:39:45 +0100 (Mon, 18 Mar 2019) $");
  script_tag(name:"creation_date", value:"2011-10-16 23:01:53 +0200 (Sun, 16 Oct 2011)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_cve_id("CVE-2011-2372", "CVE-2011-2995", "CVE-2011-2998", "CVE-2011-2999", "CVE-2011-3000");
  script_name("Debian Security Advisory DSA 2312-1 (iceape)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2011 E-Soft Inc. http://www.securityspace.com");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB6");
  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202312-1");
  script_tag(name:"insight", value:"Several vulnerabilities have been found in the Iceape internet suite,
an unbranded version of Seamonkey:

CVE-2011-2372

Mariusz Mlynski discovered that websites could open a download
dialog - which has open as the default action -, while a user
presses the ENTER key.

CVE-2011-2995

Benjamin Smedberg, Bob Clary and Jesse Ruderman discovered crashes
in the rendering engine, which could lead to the execution of
arbitrary code.

CVE-2011-2998

Mark Kaplan discovered an integer underflow in the javascript
engine, which could lead to the execution of arbitrary code.

CVE-2011-2999

Boris Zbarsky discovered that incorrect handling of the
window.location object could lead to bypasses of the same-origin
policy.

CVE-2011-3000

Ian Graham discovered that multiple Location headers might lead to
CRLF injection.

The oldstable distribution (lenny) is not affected. The iceape package
only provides the XPCOM code.

For the stable distribution (squeeze), this problem has been fixed in
version 2.0.11-8. This update also marks the compromised DigiNotar
root certs as revoked rather then untrusted.

For the unstable distribution (sid), this problem has been fixed in
version 2.0.14-8.");

  script_tag(name:"solution", value:"We recommend that you upgrade your iceape packages.");
  script_tag(name:"summary", value:"The remote host is missing an update to iceape
announced via advisory DSA 2312-1.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"iceape", ver:"2.0.11-8", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"iceape-browser", ver:"2.0.11-8", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"iceape-chatzilla", ver:"2.0.11-8", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"iceape-dbg", ver:"2.0.11-8", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"iceape-dev", ver:"2.0.11-8", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"iceape-mailnews", ver:"2.0.11-8", rls:"DEB6")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}