# OpenVAS Vulnerability Test
# $Id: deb_883_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 883-1
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
tag_solution = "For the stable distribution (sarge) this problem has been fixed in
version 2.23beta1-3sarge1.

For the unstable distribution (sid) this problem has been fixed in
version 2.23beta1-4.

We recommend that you upgrade your thttpd package.

 https://secure1.securityspace.com/smysecure/catid.html?in=DSA%20883-1";
tag_summary = "The remote host is missing an update to thttpd
announced via advisory DSA 883-1.

Javier Fern�ndez-Sanguino Pe�a from the Debian Security Audit team
discovered that the syslogtocern script from thttpd, a tiny webserver,
uses a temporary file insecurely, allowing a local attacker to craft a
symlink attack to overwrite arbitrary files.

For the old stable distribution (woody) this problem has been fixed in
version 2.21b-11.3.";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.55795");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 23:03:37 +0100 (Thu, 17 Jan 2008)");
 script_bugtraq_id(15320);
 script_cve_id("CVE-2005-3124");
 script_tag(name:"cvss_base", value:"2.1");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:N/I:P/A:N");
 script_name("Debian Security Advisory DSA 883-1 (thttpd)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2005 E-Soft Inc. http://www.securityspace.com");
 script_family("Debian Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
 script_tag(name : "solution" , value : tag_solution);
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
if ((res = isdpkgvuln(pkg:"thttpd", ver:"2.21b-11.3", rls:"DEB3.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"thttpd-util", ver:"2.21b-11.3", rls:"DEB3.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"thttpd", ver:"2.23beta1-3sarge1", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"thttpd-util", ver:"2.23beta1-3sarge1", rls:"DEB3.1")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
