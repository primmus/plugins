# OpenVAS Vulnerability Test
# $Id: deb_2070_1.nasl 8296 2018-01-05 07:28:01Z teissa $
# Description: Auto-generated from advisory DSA 2070-1 (freetype)
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
tag_insight = "Robert Swiecki discovered several vulnerabilities in the FreeType font
library, which could lead to the execution of arbitrary code if a
malformed font file is processed.

Also, several buffer overflows were found in the included demo programs.


For the stable distribution (lenny), these problems have been fixed in
version 2.3.7-2+lenny2.

For the unstable distribution (sid), these problems have been fixed in
version 2.4.0-1.

We recommend that you upgrade your freetype packages.";
tag_summary = "The remote host is missing an update to freetype
announced via advisory DSA 2070-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202070-1";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.67706");
 script_version("$Revision: 8296 $");
 script_tag(name:"last_modification", value:"$Date: 2018-01-05 08:28:01 +0100 (Fri, 05 Jan 2018) $");
 script_tag(name:"creation_date", value:"2010-07-22 17:43:43 +0200 (Thu, 22 Jul 2010)");
 script_cve_id("CVE-2010-2497", "CVE-2010-2498", "CVE-2010-2499", "CVE-2010-2500", "CVE-2010-2519", "CVE-2010-2520", "CVE-2010-2527");
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
 script_name("Debian Security Advisory DSA 2070-1 (freetype)");



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
if ((res = isdpkgvuln(pkg:"libfreetype6-dev", ver:"2.3.7-2+lenny2", rls:"DEB5.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libfreetype6", ver:"2.3.7-2+lenny2", rls:"DEB5.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"freetype2-demos", ver:"2.3.7-2+lenny2", rls:"DEB5.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
