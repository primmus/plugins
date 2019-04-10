# OpenVAS Vulnerability Test
# $Id: fcore_2009_2910.nasl 6624 2017-07-10 06:11:55Z cfischer $
# Description: Auto-generated from advisory FEDORA-2009-2910 (lcms)
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
tag_insight = "Update Information:

Some patches that was collected in the fedora package have just been submitted
upstream. Changes are hight that this update can be superseeded by a beta3 or a
stable release from upstream.

ChangeLog:

* Fri Mar 20 2009 kwizart < kwizart at gmail.com > - 1.18-0.1.beta2
- Update to 1.18beta2
fix bug #487508: CVE-2009-0723 LittleCms integer overflow
fix bug #487512: CVE-2009-0733 LittleCms lack of upper-bounds check on sizes
fix bug #487509: CVE-2009-0581 LittleCms memory leak
* Mon Mar  2 2009 kwizart < kwizart at gmail.com > - 1.17-10
- Fix circle dependency #452352";
tag_solution = "Apply the appropriate updates.

This update can be installed with the yum update program.  Use 
su -c 'yum update lcms' at the command line.
For more information, refer to Managing Software with yum,
available at http://docs.fedoraproject.org/yum/.

https://secure1.securityspace.com/smysecure/catid.html?in=FEDORA-2009-2910";
tag_summary = "The remote host is missing an update to lcms
announced via advisory FEDORA-2009-2910.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.63660");
 script_version("$Revision: 6624 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:11:55 +0200 (Mon, 10 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-03-31 19:20:21 +0200 (Tue, 31 Mar 2009)");
 script_cve_id("CVE-2009-0723", "CVE-2009-0733", "CVE-2009-0581");
 script_tag(name:"cvss_base", value:"9.3");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
 script_name("Fedora Core 9 FEDORA-2009-2910 (lcms)");



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
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=487508");
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=487512");
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=487509");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"lcms", rpm:"lcms~1.18~0.1.beta2.fc9", rls:"FC9")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lcms-devel", rpm:"lcms-devel~1.18~0.1.beta2.fc9", rls:"FC9")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lcms-libs", rpm:"lcms-libs~1.18~0.1.beta2.fc9", rls:"FC9")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"python-lcms", rpm:"python-lcms~1.18~0.1.beta2.fc9", rls:"FC9")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lcms-debuginfo", rpm:"lcms-debuginfo~1.18~0.1.beta2.fc9", rls:"FC9")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
