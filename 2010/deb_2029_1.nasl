# OpenVAS Vulnerability Test
# $Id: deb_2029_1.nasl 8274 2018-01-03 07:28:17Z teissa $
# Description: Auto-generated from advisory DSA 2029-1 (imlib2)
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
tag_insight = "It was discovered that imlib2, a library to load and process several image
formats, did not properly process various image file types.
Several heap and stack based buffer overflows - partly due to integer
overflows - in the ARGB, BMP, JPEG, LBM, PNM, TGA and XPM loaders can
lead to the execution of arbitrary code via crafted image files.

For the stable distribution (lenny), this problem has been fixed in
version 1.4.0-1.2+lenny1.

For the testing distribution (squeeze), this problem has been fixed in
version 1.4.2-1.

For the unstable distribution (sid), this problem has been fixed in
version 1.4.2-1.";
tag_summary = "The remote host is missing an update to imlib2
announced via advisory DSA 2029-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202029-1";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.67265");
 script_version("$Revision: 8274 $");
 script_tag(name:"last_modification", value:"$Date: 2018-01-03 08:28:17 +0100 (Wed, 03 Jan 2018) $");
 script_tag(name:"creation_date", value:"2010-04-21 03:31:17 +0200 (Wed, 21 Apr 2010)");
 script_cve_id("CVE-2008-6079");
 script_tag(name:"cvss_base", value:"10.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
 script_name("Debian Security Advisory DSA 2029-1 (imlib2)");



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
if ((res = isdpkgvuln(pkg:"libimlib2", ver:"1.4.0-1.2+lenny1", rls:"DEB5.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libimlib2-dev", ver:"1.4.0-1.2+lenny1", rls:"DEB5.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
