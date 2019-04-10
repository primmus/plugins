# OpenVAS Vulnerability Test
# $Id: deb_1556_2.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 1556-2 (perl)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2008 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
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
tag_insight = "An editorial mistake resulted in DSA-1556-1 not correctly applying the
required change, making it ineffective.  This DSA has been reissued as
DSA-1556-2.  We apologize for the inconvenience.  The text of the
original DSA follows.

It has been discovered that the Perl interpreter may encounter a buffer
overflow condition when compiling certain regular expressions containing
Unicode characters.  This also happens if the offending characters are
contained in a variable reference protected by the \Q...\E quoting
construct.  When encountering this condition, the Perl interpreter
typically crashes, but arbitrary code execution cannot be ruled out.

For the stable distribution (etch), this problem has been fixed in
version 5.8.8-7etch3.

The unstable distribution (sid) will be fixed soon.

We recommend that you upgrade your perl packages.";
tag_summary = "The remote host is missing an update to perl
announced via advisory DSA 1556-2.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201556-2";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.60864");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-04-30 19:28:13 +0200 (Wed, 30 Apr 2008)");
 script_cve_id("CVE-2008-1927");
 script_tag(name:"cvss_base", value:"5.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
 script_name("Debian Security Advisory DSA 1556-2 (perl)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2008 E-Soft Inc. http://www.securityspace.com");
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
if ((res = isdpkgvuln(pkg:"perl-modules", ver:"5.8.8-7etch3", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"perl-doc", ver:"5.8.8-7etch3", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libcgi-fast-perl", ver:"5.8.8-7etch3", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"perl-debug", ver:"5.8.8-7etch3", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libperl5.8", ver:"5.8.8-7etch3", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"perl", ver:"5.8.8-7etch3", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"perl-base", ver:"5.8.8-7etch3", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libperl-dev", ver:"5.8.8-7etch3", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"perl-suid", ver:"5.8.8-7etch3", rls:"DEB4.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
