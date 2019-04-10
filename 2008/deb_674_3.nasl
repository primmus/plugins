# OpenVAS Vulnerability Test
# $Id: deb_674_3.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 674-3
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
tag_insight = "Due to an incompatibility between Python 1.5 and 2.1 the last mailman
update did not run with Python 1.5 anymore.  This problem is corrected
with this update.  This advisory only updates the packages updated
with DSA 674-2.  The version in unstable is not affected since it is
not supposed to work with Python 1.5 anymore.  For completeness below
is the original advisory text:

Two security related problems have been discovered in mailman,
web-based GNU mailing list manager.  The Common Vulnerabilities and
Exposures project identifies the following problems:

CVE-2004-1177

Florian Weimer discovered a cross-site scripting vulnerability in
mailman's automatically generated error messages.  An attacker
could craft an URL containing JavaScript (or other content
embedded into HTML) which triggered a mailman error page that
would include the malicious code verbatim.

CVE-2005-0202

Several listmasters have noticed unauthorised access to archives
of private lists and the list configuration itself, including the
users passwords.  Administrators are advised to check the
webserver logfiles for requests that contain /...../ and the
path to the archives or cofiguration.  This does only seem to
affect installations running on web servers that do not strip
slashes, such as Apache 1.3.

For the stable distribution (woody) these problems have been fixed in
version 2.0.11-1woody11.

We recommend that you upgrade your mailman package.";
tag_summary = "The remote host is missing an update to mailman
announced via advisory DSA 674-3.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%20674-3";

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.53517");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 22:56:38 +0100 (Thu, 17 Jan 2008)");
 script_cve_id("CVE-2004-1177", "CVE-2005-0202");
 script_tag(name:"cvss_base", value:"5.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
 script_name("Debian Security Advisory DSA 674-3 (mailman)");



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
if ((res = isdpkgvuln(pkg:"mailman", ver:"2.0.11-1woody11", rls:"DEB3.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
