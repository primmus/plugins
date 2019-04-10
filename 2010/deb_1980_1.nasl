# OpenVAS Vulnerability Test
# $Id: deb_1980_1.nasl 8287 2018-01-04 07:28:11Z teissa $
# Description: Auto-generated from advisory DSA 1980-1 (ircd-hybrid/ircd-ratbox)
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
tag_insight = "David Leadbeater discovered an integer underflow that could be triggered
via the LINKS command and can lead to a denial of service or the
execution of arbitrary code (CVE-2009-4016). This issue affects both,
ircd-hybrid and ircd-ratbox.

It was discovered that the ratbox IRC server is prone to a denial of
service attack via the HELP command. The ircd-hybrid package is not
vulnerable to this issue (CVE-2010-0300).


For the stable distribution (lenny), this problem has been fixed in
version 1:7.2.2.dfsg.2-4+lenny1 of the ircd-hybrid package and in
version 2.2.8.dfsg-2+lenny1 of ircd-ratbox.

Due to a bug in the archive software it was not possible to release the
fix for the oldstable distribution (etch) simultaneously. The packages
will be released as version 7.2.2.dfsg.2-3+etch1 once they become
available.

For the testing distribution (squeeze) and the unstable distribution
(sid), this problem will be fixed soon.


We recommend that you upgrade your ircd-hybrid/ircd-ratbox packages.";
tag_summary = "The remote host is missing an update to ircd-hybrid/ircd-ratbox
announced via advisory DSA 1980-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201980-1";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.66773");
 script_version("$Revision: 8287 $");
 script_tag(name:"last_modification", value:"$Date: 2018-01-04 08:28:11 +0100 (Thu, 04 Jan 2018) $");
 script_tag(name:"creation_date", value:"2010-02-01 18:25:19 +0100 (Mon, 01 Feb 2010)");
 script_cve_id("CVE-2009-4016", "CVE-2010-0300");
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
 script_name("Debian Security Advisory DSA 1980-1 (ircd-hybrid/ircd-ratbox)");



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
if ((res = isdpkgvuln(pkg:"hybrid-dev", ver:"7.2.2.dfsg.2-4+lenny1", rls:"DEB5.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"ircd-ratbox", ver:"2.2.8.dfsg-2+lenny1", rls:"DEB5.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"ircd-ratbox-dbg", ver:"2.2.8.dfsg-2+lenny1", rls:"DEB5.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"ircd-hybrid", ver:"7.2.2.dfsg.2-4+lenny1", rls:"DEB5.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
