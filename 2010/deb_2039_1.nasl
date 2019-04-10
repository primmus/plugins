# OpenVAS Vulnerability Test
# $Id: deb_2039_1.nasl 8228 2017-12-22 07:29:52Z teissa $
# Description: Auto-generated from advisory DSA 2039-1 (cacti)
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
tag_insight = "It was discovered that Cacti, a frontend to rrdtool for monitoring
systems and services missed input sanitising, making an SQL injection
attack possible.

For the stable distribution (lenny), this problem has been fixed in
version 0.8.7b-2.1+lenny2.

For the unstable distribution (sid), this problem will be fixed soon.

We recommend that you upgrade your cacti package.";
tag_summary = "The remote host is missing an update to cacti
announced via advisory DSA 2039-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202039-1";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.67340");
 script_cve_id("CVE-2010-1431");
 script_version("$Revision: 8228 $");
 script_tag(name:"last_modification", value:"$Date: 2017-12-22 08:29:52 +0100 (Fri, 22 Dec 2017) $");
 script_tag(name:"creation_date", value:"2010-05-04 05:52:15 +0200 (Tue, 04 May 2010)");
 script_tag(name:"cvss_base", value:"7.5");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
 script_name("Debian Security Advisory DSA 2039-1 (cacti)");



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
if ((res = isdpkgvuln(pkg:"cacti", ver:"0.8.7b-2.1+lenny2", rls:"DEB5.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
