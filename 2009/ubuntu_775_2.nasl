# OpenVAS Vulnerability Test
# $Id: ubuntu_775_2.nasl 7969 2017-12-01 09:23:16Z santu $
# $Id: ubuntu_775_2.nasl 7969 2017-12-01 09:23:16Z santu $
# Description: Auto-generated from advisory USN-775-2 (quagga)
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
tag_solution = "The problem can be corrected by upgrading your system to the
 following package versions:

Ubuntu 6.06 LTS:
  quagga                          0.99.2-1ubuntu3.6

Ubuntu 8.04 LTS:
  quagga                          0.99.9-2ubuntu1.3

Ubuntu 8.10:
  quagga                          0.99.9-6ubuntu0.2

In general, a standard system upgrade is sufficient to effect the
necessary changes.

https://secure1.securityspace.com/smysecure/catid.html?in=USN-775-2";

tag_insight = "USN-775-1 fixed vulnerabilities in Quagga.  The preventative fixes
introduced in Quagga prior to Ubuntu 9.04 could result in BGP service
failures.  This update fixes the problem.

We apologize for the inconvenience.

Original advisory details:

 It was discovered that the BGP service in Quagga did not correctly
 handle certain AS paths containing 4-byte ASNs.  An authenticated remote
 attacker could exploit this flaw to cause bgpd to abort, leading to a
 denial of service.";
tag_summary = "The remote host is missing an update to quagga
announced via advisory USN-775-2.";

                                                                                


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.64199");
 script_version("$Revision: 7969 $");
 script_tag(name:"last_modification", value:"$Date: 2017-12-01 10:23:16 +0100 (Fri, 01 Dec 2017) $");
 script_tag(name:"creation_date", value:"2009-06-15 19:20:43 +0200 (Mon, 15 Jun 2009)");
 script_tag(name:"cvss_base", value:"7.2");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:C/I:C/A:C");
 script_name("Ubuntu USN-775-2 (quagga)");



 script_category(ACT_GATHER_INFO);
 script_xref(name: "URL" , value: "http://www.ubuntu.com/usn/usn-775-2/");

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("Ubuntu Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages");
 script_tag(name : "insight" , value : tag_insight);
 script_tag(name : "summary" , value : tag_summary);
 script_tag(name : "solution" , value : tag_solution);
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
if ((res = isdpkgvuln(pkg:"quagga-doc", ver:"0.99.2-1ubuntu3.6", rls:"UBUNTU6.06 LTS")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"quagga", ver:"0.99.2-1ubuntu3.6", rls:"UBUNTU6.06 LTS")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"quagga-doc", ver:"0.99.9-2ubuntu1.3", rls:"UBUNTU8.04 LTS")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"quagga", ver:"0.99.9-2ubuntu1.3", rls:"UBUNTU8.04 LTS")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"quagga-doc", ver:"0.99.9-6ubuntu0.2", rls:"UBUNTU8.10")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"quagga", ver:"0.99.9-6ubuntu0.2", rls:"UBUNTU8.10")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
