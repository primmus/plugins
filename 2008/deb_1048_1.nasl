# OpenVAS Vulnerability Test
# $Id: deb_1048_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 1048-1
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
version 1.0.7.dfsg.1-2sarge2.

For the unstable distribution (sid) this problem has been fixed in
version 1.2.7.1.dfsg-1.

We recommend that you upgrade your asterisk package.

 https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201048-1";
tag_summary = "The remote host is missing an update to asterisk
announced via advisory DSA 1048-1.

Several problems have been discovered in Asterisk, an Open Source
Private Branch Exchange (telephone control center).  The Common
Vulnerabilities and Exposures project identifies the following
problems:

CVE-2005-3559

Adam Pointon discovered that due to missing input sanitising it is
possible to retrieve recorded phone messages for a different
extension.

CVE-2006-1827

Emmanouel Kellinis discovered an integer signedness error that
could trigger a buffer overflow and hence allow the execution of
arbitrary code.

For the old stable distribution (woody) this problem has been fixed in
version 0.1.11-3woody1.";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.56668");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 23:09:45 +0100 (Thu, 17 Jan 2008)");
 script_cve_id("CVE-2005-3559", "CVE-2006-1827");
 script_bugtraq_id(15336);
 script_tag(name:"cvss_base", value:"6.4");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:P/A:P");
 script_name("Debian Security Advisory DSA 1048-1 (asterisk)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2006 E-Soft Inc. http://www.securityspace.com");
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
if ((res = isdpkgvuln(pkg:"asterisk", ver:"0.1.11-3woody1", rls:"DEB3.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"asterisk-config", ver:"1.0.7.dfsg.1-2sarge2", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"asterisk-dev", ver:"1.0.7.dfsg.1-2sarge2", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"asterisk-doc", ver:"1.0.7.dfsg.1-2sarge2", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"asterisk-sounds-main", ver:"1.0.7.dfsg.1-2sarge2", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"asterisk-web-vmail", ver:"1.0.7.dfsg.1-2sarge2", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"asterisk", ver:"1.0.7.dfsg.1-2sarge2", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"asterisk-gtk-console", ver:"1.0.7.dfsg.1-2sarge2", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"asterisk-h323", ver:"1.0.7.dfsg.1-2sarge2", rls:"DEB3.1")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
