# OpenVAS Vulnerability Test
# $Id: deb_1306_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 1306-1
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
tag_insight = "Several remote vulnerabilities have been discovered in Xulrunner, a
runtime environment for XUL applications. The Common Vulnerabilities
and Exposures project identifies the following problems:

CVE-2007-1362

Nicolas Derouet discovered that Xulrunner performs insufficient
validation of cookies, which could lead to denial of service.

CVE-2007-2867

Boris Zbarsky, Eli Friedman, Georgi Guninski, Jesse Ruderman, Martijn
Wargers and Olli Pettay discovered crashes in the layout engine, which
might allow the execution of arbitrary code.

CVE-2007-2868

Brendan Eich, Igor Bukanov, Jesse Ruderman, moz_bug_r_a4 and Wladimir
Palant discovered crashes in the Javascript engine, which might allow
the execution of arbitrary code.

CVE-2007-2869

Marcel discovered that malicous web sites can cause massive
ressource comsumption through the auto completion feature, resulting
in denial of service.

CVE-2007-2870

moz_bug_r_a4 discovered that adding an event listener through the
addEventListener() function allows cross-site scripting.

CVE-2007-2871

Chris Thomas discovered that XUL popups can can be abused for spoofing
or phishing attacks.

The oldstable distribution (sarge) doesn't include xulrunner.

For the stable distribution (etch) these problems have been fixed in
version 1.8.0.12-0etch1.

The unstable distribution (sid) will be fixed soon.

We recommend that you upgrade your xulrunner packages.";
tag_summary = "The remote host is missing an update to xulrunner
announced via advisory DSA 1306-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201306-1";

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.58353");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 23:19:52 +0100 (Thu, 17 Jan 2008)");
 script_cve_id("CVE-2007-1362", "CVE-2007-2867", "CVE-2007-2868", "CVE-2007-2869", "CVE-2007-2870", "CVE-2007-2871");
 script_tag(name:"cvss_base", value:"9.3");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
 script_name("Debian Security Advisory DSA 1306-1 (xulrunner)");



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
if ((res = isdpkgvuln(pkg:"libmozillainterfaces-java", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libmozjs-dev", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libnspr4-dev", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libnss3-dev", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libsmjs-dev", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libsmjs1", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libxul-common", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libxul-dev", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libmozjs0d", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libmozjs0d-dbg", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libnspr4-0d", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libnspr4-0d-dbg", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libnss3-0d", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libnss3-0d-dbg", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libnss3-tools", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libxul0d", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libxul0d-dbg", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python-xpcom", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"spidermonkey-bin", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"xulrunner", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"xulrunner-gnome-support", ver:"1.8.0.12-0etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
