# OpenVAS Vulnerability Test
# $Id: deb_1802_2.nasl 6615 2017-07-07 12:09:52Z cfischer $
# Description: Auto-generated from advisory DSA 1802-2 (squirrelmail)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com
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
tag_insight = "Michal Hlavinka discovered that the fix for code execution in the
map_yp_alias function, known as CVE-2009-1579 and released in DSA 1802-1,
was incomplete. This update corrects the fix for that function.

For the old stable distribution (etch), this problem has been fixed in
version 1.4.9a-5.

For the stable distribution (lenny), this problem has been fixed in
version 1.4.15-4+lenny2.

For the unstable distribution (sid), this problem has been fixed in
version 1.4.19-1

We recommend that you upgrade your squirrelmail package.";
tag_summary = "The remote host is missing an update to squirrelmail
announced via advisory DSA 1802-2.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201802-2";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.64037");
 script_version("$Revision: 6615 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:09:52 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-05-25 20:59:33 +0200 (Mon, 25 May 2009)");
 script_cve_id("CVE-2009-1578", "CVE-2009-1579", "CVE-2009-1580", "CVE-2009-1581", "CVE-2009-1381");
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
 script_name("Debian Security Advisory DSA 1802-2 (squirrelmail)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
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
if ((res = isdpkgvuln(pkg:"squirrelmail", ver:"1.4.9a-5", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"squirrelmail", ver:"1.4.15-4+lenny2", rls:"DEB5.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
