# OpenVAS Vulnerability Test
# $Id: deb_2098_2.nasl 8970 2018-02-27 15:16:18Z cfischer $
# Description: Auto-generated from advisory DSA 2098-2 (typo3-src)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2010 E-Soft Inc. http://www.securityspace.com
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

include("revisions-lib.inc");
tag_insight = "The update for TYPO3 in DSA 2098 introduced a regression which could
make the backend functionality unusable. This update corrects the
problem. For reference the original advisory below.

Several remote vulnerabilities have been discovered in the TYPO3 web
content management framework: cross-site Scripting, open redirection,
SQL injection, broken authentication and session management,
insecure randomness, information disclosure and arbitrary code
execution. More details can be found in the Typo3 security advisory:
http://typo3.org/teams/security/security-bulletins/typo3-sa-2010-012/

For the stable distribution (lenny), these problems have been fixed in
version 4.2.5-1+lenny5.

The testing distribution (squeeze) will be fixed soon.

For the unstable distribution (sid), these problems have been fixed in
version 4.3.5-1 (not affected by the regression).

We recommend that you upgrade your typo3-src package.";
tag_summary = "The remote host is missing an update to typo3-src
announced via advisory DSA 2098-2.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202098-2";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.67989");
 script_version("$Revision: 8970 $");
 script_tag(name:"last_modification", value:"$Date: 2018-02-27 16:16:18 +0100 (Tue, 27 Feb 2018) $");
 script_tag(name:"creation_date", value:"2010-10-10 19:35:00 +0200 (Sun, 10 Oct 2010)");
 script_tag(name:"cvss_base", value:"7.5");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
 script_name("Debian Security Advisory DSA 2098-2 (typo3-src)");
 script_cve_id("CVE-2010-3659", "CVE-2010-3660", "CVE-2010-3661", "CVE-2010-3662", "CVE-2010-3663",
               "CVE-2010-3664", "CVE-2010-3665", "CVE-2010-3666", "CVE-2010-3667", "CVE-2010-3668",
               "CVE-2010-3669", "CVE-2010-3670", "CVE-2010-3671", "CVE-2010-3672", "CVE-2010-3673",
               "CVE-2010-3674");

 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2010 E-Soft Inc. http://www.securityspace.com");
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
if ((res = isdpkgvuln(pkg:"typo3", ver:"4.2.5-1+lenny5", rls:"DEB5.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"typo3-src-4.2", ver:"4.2.5-1+lenny5", rls:"DEB5.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
