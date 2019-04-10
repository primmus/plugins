# OpenVAS Vulnerability Test
# $Id: deb_276_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 276-1
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
tag_insight = "The kernel module loader in Linux 2.2 and Linux 2.4 kernels has a flaw
in ptrace.  This hole allows local users to obtain root privileges by
using ptrace to attach to a child process that is spawned by the
kernel.  Remote exploitation of this hole is not possible.

This advisory only covers kernel packages for the S/390 architecture.
Other architectures will be covered by separate advisories.

For the stable distribution (woody) this problem has been fixed in the
following versions:
kernel-patch-2.4.17-s390: version 0.0.20020816-0.woody.1.1
kernel-image-2.4.17-s390: version 2.4.17-2.woody.2.2

The old stable distribution (potato) is not affected by this problem
for this architecture since s390 was first released with Debian
GNU/Linux 3.0 (woody).

For the unstable distribution (sid) this problem will be fixed soon.

We recommend that you upgrade your kernel-images packages immediately.";
tag_summary = "The remote host is missing an update to kernel-patch-2.4.17-s390, kernel-image-2.4.17-s390
announced via advisory DSA 276-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%20276-1";

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.53758");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 22:28:10 +0100 (Thu, 17 Jan 2008)");
 script_cve_id("CVE-2003-0127");
 script_tag(name:"cvss_base", value:"7.2");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:C/I:C/A:C");
 script_name("Debian Security Advisory DSA 276-1 (kernel-patch-2.4.17-s390, kernel-image-2.4.17-s390)");



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
if ((res = isdpkgvuln(pkg:"kernel-patch-2.4.17-s390", ver:"0.0.20020816-0.woody.1.1", rls:"DEB3.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"kernel-headers-2.4.17", ver:"2.4.17-2.woody.2.2", rls:"DEB3.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"kernel-image-2.4.17-s390", ver:"2.4.17-2.woody.2.2", rls:"DEB3.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
