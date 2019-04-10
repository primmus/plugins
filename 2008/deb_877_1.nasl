# OpenVAS Vulnerability Test
# $Id: deb_877_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 877-1
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
tag_solution = "For the stable distribution (sarge) these problems have been fixed in
version 2.9.3-1sarge2.

For the unstable distribution (sid) these problems have been fixed in
version 2.9.6-1.

We recommend that you upgrade your gnump3d package.

 https://secure1.securityspace.com/smysecure/catid.html?in=DSA%20877-1";
tag_summary = "The remote host is missing an update to gnump3d
announced via advisory DSA 877-1.

Steve Kemp discovered two vulnerabilities in gnump3d, a streaming
server for MP3 and OGG files.  The Common Vulnerabilities and
Exposures Project identifies the following problems:

CVE-2005-3122
The 404 error page does not strip malicious javascript content
from the resulting page, which would be executed in the victims
browser.

CVE-2005-3123
By using specially crafting URLs it is possible to read arbitrary
files to which the user of the streaming server has access to.

The old stable distribution (woody) does not contain a gnump3d package.";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.55754");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 23:03:37 +0100 (Thu, 17 Jan 2008)");
 script_cve_id("CVE-2005-3122", "CVE-2005-3123");
 script_tag(name:"cvss_base", value:"5.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
 script_name("Debian Security Advisory DSA 877-1 (gnump3d)");



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
if ((res = isdpkgvuln(pkg:"gnump3d", ver:"2.9.3-1sarge2", rls:"DEB3.1")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
