# OpenVAS Vulnerability Test
# $Id: deb_1531_2.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 1531-2 (policyd-weight)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2008 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
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
tag_insight = "The previous update for policyd-weight was unfortunately not complete.
Updated packages have been released that fully address the vulnerability.
For reference the original advisory follows.

Chris Howells discovered that policyd-weight, a policy daemon for the Postfix
mail transport agent, created its socket in an insecure way, which may be
exploited to overwrite or remove arbitrary files from the local system.

For the stable distribution (etch), this problem has been fixed in version
0.1.14-beta-6etch2.

The old stable distribution (sarge) does not contain a policyd-weight package.

For the unstable distribution (sid), this problem will be fixed soon.


We recommend that you upgrade your policyd-weight package.";
tag_summary = "The remote host is missing an update to policyd-weight
announced via advisory DSA 1531-2.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201531-2";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.60656");
 script_cve_id("CVE-2008-1569");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-04-07 20:38:54 +0200 (Mon, 07 Apr 2008)");
 script_tag(name:"cvss_base", value:"3.3");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:N/I:P/A:P");
 script_name("Debian Security Advisory DSA 1531-2 (policyd-weight)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2008 E-Soft Inc. http://www.securityspace.com");
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
if ((res = isdpkgvuln(pkg:"policyd-weight", ver:"0.1.14-beta-6etch2", rls:"DEB4.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
