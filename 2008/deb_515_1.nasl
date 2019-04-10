# OpenVAS Vulnerability Test
# $Id: deb_515_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 515-1
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
tag_insight = "Two vulnerabilities were discovered in lha:

- CVE-2004-0234 - Multiple stack-based buffer overflows in the
get_header function in header.c for LHA 1.14 allow remote attackers
or local users to execute arbitrary code via long directory or file
names in an LHA archive, which triggers the overflow when testing
or extracting the archive.

- CVE-2004-0235 - Multiple directory traversal vulnerabilities in LHA
1.14 allow remote attackers or local users to create arbitrary
files via an LHA archive containing filenames with (1) .. sequences
or (2) absolute pathnames with double leading slashes
(//absolute/path).

For the current stable distribution (woody), these problems have been
fixed in version 1.14i-2woody1.

For the unstable distribution (sid), these problems have been fixed in
version 1.14i-8.

We recommend that you update your lha package.";
tag_summary = "The remote host is missing an update to lha
announced via advisory DSA 515-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%20515-1";

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.53206");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 22:45:44 +0100 (Thu, 17 Jan 2008)");
 script_cve_id("CVE-2004-0234", "CVE-2004-0235");
 script_tag(name:"cvss_base", value:"10.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
 script_name("Debian Security Advisory DSA 515-1 (lha)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2005 E-Soft Inc. http://www.securityspace.com");
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
if ((res = isdpkgvuln(pkg:"lha", ver:"1.14i-2woody1", rls:"DEB3.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
