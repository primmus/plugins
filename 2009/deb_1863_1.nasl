# OpenVAS Vulnerability Test
# $Id: deb_1863_1.nasl 6615 2017-07-07 12:09:52Z cfischer $
# Description: Auto-generated from advisory DSA 1863-1 (zope2.10/zope2.9)
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
tag_insight = "Several remote vulnerabilities have been discovered in the zope,
a feature-rich web application server written in python, that could
lead to arbitrary code execution in the worst case.  The Common
Vulnerabilities and Exposures project identified the following problems:

Due to a programming error an authorization method in the StorageServer
component of ZEO was not used as an internal method.  This allows a
malicious client to bypass authentication when connecting to a ZEO server
by simply calling this authorization method (CVE-2009-0668).

The ZEO server doesn't restrict the callables when unpickling data received
from a malicious client which can be used by an attacker to execute
arbitrary python code on the server by sending certain exception pickles.
This also allows an attacker to import any importable module as ZEO is
importing the module containing a callable specified in a pickle to test
for a certain flag (CVE-2009-0668).

The update also limits the number of new object ids a client can request
to 100 as it would be possible to consume huge amounts of resources by
requesting a big batch of new object ids. No CVE id has been assigned to
this.


The oldstable distribution (etch), this problem has been fixed in
version 2.9.6-4etch2 of zope2.9.

For the stable distribution (lenny), this problem has been fixed in
version 2.10.6-1+lenny1 of zope2.10.

For the testing distribution (squeeze), this problem will be fixed soon.

For the unstable distribution (sid), this problem has been fixed in
version 2.10.9-1 of zope2.10.


We recommend that you upgrade your zope2.10/zope2.9 packages.";
tag_summary = "The remote host is missing an update to zope2.10/zope2.9
announced via advisory DSA 1863-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201863-1";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.64746");
 script_version("$Revision: 6615 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:09:52 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-09-02 04:58:39 +0200 (Wed, 02 Sep 2009)");
 script_cve_id("CVE-2009-0668", "CVE-2009-0669");
 script_tag(name:"cvss_base", value:"7.5");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
 script_name("Debian Security Advisory DSA 1863-1 (zope2.10/zope2.9)");



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
if ((res = isdpkgvuln(pkg:"zope2.9-sandbox", ver:"2.9.6-4etch2", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"zope2.9", ver:"2.9.6-4etch2", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"zope2.10-sandbox", ver:"2.10.6-1+lenny1", rls:"DEB5.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"zope2.10", ver:"2.10.6-1+lenny1", rls:"DEB5.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
