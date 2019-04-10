# OpenVAS Vulnerability Test
# $Id: fcore_2009_8132.nasl 6624 2017-07-10 06:11:55Z cfischer $
# Description: Auto-generated from advisory FEDORA-2009-8132 (OpenEXR)
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
tag_insight = "OpenEXR is a high dynamic-range (HDR) image file format developed by Industrial
Light & Magic for use in computer imaging applications. This package contains
libraries and sample applications for handling the format.

ChangeLog:

* Wed Jul 29 2009 Rex Dieter  1.6.1-8
- CVE-2009-1720 OpenEXR: Multiple integer overflows (#513995)
- CVE-2009-1721 OpenEXR: Invalid pointer free by image decompression (#514003)
* Fri Jul 24 2009 Fedora Release Engineering  - 1.6.1-7
- Rebuilt for https://fedoraproject.org/wiki/Fedora_12_Mass_Rebuild";
tag_solution = "Apply the appropriate updates.

This update can be installed with the yum update program.  Use 
su -c 'yum update OpenEXR' at the command line.
For more information, refer to Managing Software with yum,
available at http://docs.fedoraproject.org/yum/.

https://secure1.securityspace.com/smysecure/catid.html?in=FEDORA-2009-8132";
tag_summary = "The remote host is missing an update to OpenEXR
announced via advisory FEDORA-2009-8132.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.64543");
 script_version("$Revision: 6624 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:11:55 +0200 (Mon, 10 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-08-17 16:54:45 +0200 (Mon, 17 Aug 2009)");
 script_cve_id("CVE-2009-1720", "CVE-2009-1721");
 script_tag(name:"cvss_base", value:"7.5");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
 script_name("Fedora Core 11 FEDORA-2009-8132 (OpenEXR)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("Fedora Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");
 script_tag(name : "insight" , value : tag_insight);
 script_tag(name : "solution" , value : tag_solution);
 script_tag(name : "summary" , value : tag_summary);
 script_tag(name:"qod_type", value:"package");
 script_tag(name:"solution_type", value:"VendorFix");
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=513995");
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=514003");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"OpenEXR", rpm:"OpenEXR~1.6.1~8.fc11", rls:"FC11")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"OpenEXR-devel", rpm:"OpenEXR-devel~1.6.1~8.fc11", rls:"FC11")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"OpenEXR-libs", rpm:"OpenEXR-libs~1.6.1~8.fc11", rls:"FC11")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"OpenEXR-debuginfo", rpm:"OpenEXR-debuginfo~1.6.1~8.fc11", rls:"FC11")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
