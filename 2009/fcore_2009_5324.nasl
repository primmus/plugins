# OpenVAS Vulnerability Test
# $Id: fcore_2009_5324.nasl 6624 2017-07-10 06:11:55Z cfischer $
# Description: Auto-generated from advisory FEDORA-2009-5324 (quagga)
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

The latest upstream version fixes serious assert crashing with ASN4's.
ChangeLog:

* Wed May 20 2009 Jiri Skala  - 0.99.12-1
- update to latest upstream version
- fix #499960 - BGPd in Quagga prior to 0.99.12 has a serious assert problem crashing with ASN4's
* Mon May  4 2009 Jiri Skala  - 0:0.99.11-3
- fixes #498832 - bgpd crashes on as paths containing more 6 digit as numbers";
tag_solution = "Apply the appropriate updates.

This update can be installed with the yum update program.  Use 
su -c 'yum update quagga' at the command line.
For more information, refer to Managing Software with yum,
available at http://docs.fedoraproject.org/yum/.

https://secure1.securityspace.com/smysecure/catid.html?in=FEDORA-2009-5324";
tag_summary = "The remote host is missing an update to quagga
announced via advisory FEDORA-2009-5324.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.64031");
 script_version("$Revision: 6624 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:11:55 +0200 (Mon, 10 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-05-25 20:59:33 +0200 (Mon, 25 May 2009)");
 script_cve_id("CVE-2009-1572");
 script_tag(name:"cvss_base", value:"5.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
 script_name("Fedora Core 11 FEDORA-2009-5324 (quagga)");



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
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=499033");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"quagga", rpm:"quagga~0.99.12~1.fc11", rls:"FC11")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"quagga-contrib", rpm:"quagga-contrib~0.99.12~1.fc11", rls:"FC11")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"quagga-devel", rpm:"quagga-devel~0.99.12~1.fc11", rls:"FC11")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"quagga-debuginfo", rpm:"quagga-debuginfo~0.99.12~1.fc11", rls:"FC11")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
