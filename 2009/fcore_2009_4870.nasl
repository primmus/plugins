# OpenVAS Vulnerability Test
# $Id: fcore_2009_4870.nasl 6624 2017-07-10 06:11:55Z cfischer $
# Description: Auto-generated from advisory FEDORA-2009-4870 (squirrelmail)
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
tag_insight = "ChangeLog:

* Tue May 12 2009 Michal Hlavinka  - 1.4.18-1
- update to 1.4.18 (fixes CVE-2009-1581)
* Thu Dec  4 2008 Michal Hlavinka  - 1.4.17-1
- update to 1.4.17 (fixes CVE-2008-2379)
* Wed Oct  1 2008 Michal Hlavinka  - 1.4.16-1
- update to 1.4.16
- resolves: #464185: CVE-2008-3663 Squirrelmail session hijacking";
tag_solution = "Apply the appropriate updates.

This update can be installed with the yum update program.  Use 
su -c 'yum update squirrelmail' at the command line.
For more information, refer to Managing Software with yum,
available at http://docs.fedoraproject.org/yum/.

https://secure1.securityspace.com/smysecure/catid.html?in=FEDORA-2009-4870";
tag_summary = "The remote host is missing an update to squirrelmail
announced via advisory FEDORA-2009-4870.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.63985");
 script_version("$Revision: 6624 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:11:55 +0200 (Mon, 10 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-05-20 00:17:15 +0200 (Wed, 20 May 2009)");
 script_cve_id("CVE-2009-1581", "CVE-2008-2379", "CVE-2008-3663", "CVE-2009-1579", "CVE-2009-1580", "CVE-2009-1578");
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
 script_name("Fedora Core 9 FEDORA-2009-4870 (squirrelmail)");



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
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=500360");
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=500358");
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=500356");
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=500363");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"squirrelmail", rpm:"squirrelmail~1.4.18~1.fc9", rls:"FC9")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
