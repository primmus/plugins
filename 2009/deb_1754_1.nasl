# OpenVAS Vulnerability Test
# $Id: deb_1754_1.nasl 6615 2017-07-07 12:09:52Z cfischer $
# Description: Auto-generated from advisory DSA 1754-1 (roundup)
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
tag_insight = "It was discovered that roundup, an issue tracker with a command-line,
web and email interface, allows users to edit resources in
unauthorized ways, including granting themselves admin rights.

This update introduces stricter access checks, actually enforcing the
configured permissions and roles.  This means that the configuration
may need updating.  In addition, user registration via the web
interface has been disabled; use the program roundup-admin from the
command line instead.

For the old stable distribution (etch), this problem has been fixed in
version 1.2.1-10+etch1.

For the stable distribution (lenny), this problem has been fixed in
version 1.4.4-4+lenny1.

We recommend that you upgrade your roundup package.";
tag_summary = "The remote host is missing an update to roundup
announced via advisory DSA 1754-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201754-1";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.63796");
 script_cve_id("CVE-2009-2737");
 script_version("$Revision: 6615 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:09:52 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-04-15 22:11:00 +0200 (Wed, 15 Apr 2009)");
 script_tag(name:"cvss_base", value:"5.5");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:N/I:P/A:P");
 script_name("Debian Security Advisory DSA 1754-1 (roundup)");



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
if ((res = isdpkgvuln(pkg:"roundup", ver:"1.2.1-10+etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"roundup", ver:"1.4.4-4+lenny1", rls:"DEB5.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
