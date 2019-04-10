# OpenVAS Vulnerability Test
# $Id: deb_1339_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 1339-1
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2007 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largerly excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
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

include("revisions-lib.inc");
tag_insight = "Several remote vulnerabilities have been discovered in the Iceape internet
suite, an unbranded version of the Seamonkey Internet Suite. The Common
Vulnerabilities and Exposures project identifies the following problems:

CVE-2007-3089

Ronen Zilberman and Michal Zalewski discovered that a timing race
allows the injection of content into about:blank frames.

CVE-2007-3656

Michal Zalewski discovered that same-origin policies for wyciwyg://
documents are insufficiently enforced.

CVE-2007-3734

Bernd Mielke, Boris Zbarsky, David Baron, Daniel Veditz, Jesse Ruderman,
Lukas Loehrer, Martijn Wargers, Mats Palmgren, Olli Pettay, Paul
Nickerson,and Vladimir Sukhoy discovered crashes in the layout engine,
which might allow the execution of arbitrary code.

CVE-2007-3735

Asaf Romano, Jesse Ruderman and Igor Bukanov discovered crashes in the
javascript engine, which might allow the execution of arbitrary code.

CVE-2007-3736

moz_bug_r_a4 discovered that the addEventListener() and setTimeout()
functions allow cross-site scripting.

CVE-2007-3737

moz_bug_r_a4 discovered that a programming error in event handling
allows privilege escalation.

CVE-2007-3738

shutdown and moz_bug_r_a4 discovered that the XPCNativeWrapper allows
the execution of arbitrary code.

The Mozilla products in the oldstable distribution (sarge) are no longer
supported with security updates. You're strongly encouraged to upgrade to
stable as soon as possible.

For the stable distribution (etch) these problems have been fixed in version
1.0.10~pre070720-0etch1. A build for the mips architecture is not yet available,
it will be provided later.

For the unstable distribution (sid) these problems have been fixed in version
1.1.3-1.

We recommend that you upgrade your iceape packages.";
tag_summary = "The remote host is missing an update to iceape
announced via advisory DSA 1339-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201339-1";

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.58471");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 23:19:52 +0100 (Thu, 17 Jan 2008)");
 script_cve_id("CVE-2007-3089", "CVE-2007-3656", "CVE-2007-3734", "CVE-2007-3735", "CVE-2007-3736", "CVE-2007-3737", "CVE-2007-3738");
 script_tag(name:"cvss_base", value:"9.3");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
 script_name("Debian Security Advisory DSA 1339-1 (iceape)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2007 E-Soft Inc. http://www.securityspace.com");
 script_family("Debian Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
 script_tag(name : "solution" , value : tag_solution);
 script_tag(name : "insight" , value : tag_insight);
 script_tag(name : "summary" , value : tag_summary);
 script_tag(name:"qod_type", value:"package");
 script_tag(name:"solution_type", value:"VendorFix");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"iceape-chatzilla", ver:"1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"iceape-dev", ver:"1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"iceape", ver:"1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mozilla-browser", ver:"1.8+1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mozilla-calendar", ver:"1.8+1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mozilla-chatzilla", ver:"1.8+1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mozilla-dev", ver:"1.8+1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mozilla-dom-inspector", ver:"1.8+1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mozilla-js-debugger", ver:"1.8+1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mozilla-mailnews", ver:"1.8+1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mozilla-psm", ver:"1.8+1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"mozilla", ver:"1.8+1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"iceape-browser", ver:"1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"iceape-calendar", ver:"1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"iceape-dbg", ver:"1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"iceape-dom-inspector", ver:"1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"iceape-gnome-support", ver:"1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"iceape-mailnews", ver:"1.0.10~pre070720-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
