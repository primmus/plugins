# OpenVAS Vulnerability Test
# $Id: fcore_2009_11314.nasl 6624 2017-07-10 06:11:55Z cfischer $
# Description: Auto-generated from advisory FEDORA-2009-11314 (cups)
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

New release, including fix for XSS vulnerability in web interface
(CVE-2009-2820) and for improper reference counting in abstract file descriptors
handling interface (CVE-2009-3553).

ChangeLog:

* Thu Nov 19 2009 Tim Waugh  1:1.4.2-7
- Applied patch to fix CVE-2009-3553 (bug #530111, STR #3200).
* Tue Nov 17 2009 Tim Waugh  1:1.4.2-6
- Fixed display of current driver (bug #537182, STR #3418).
- Fixed out-of-memory handling when loading jobs (bug #538054,
STR #3407).
* Mon Nov 16 2009 Tim Waugh  1:1.4.2-5
- Fixed typo in admin web template (bug #537884, STR #3403).
- Reset SIGPIPE handler for child processes (bug #537886, STR #3399).
* Mon Nov 16 2009 Tim Waugh  1:1.4.2-4
- Upstream fix for GNU TLS error handling bug (bug #537883, STR #3381).
* Wed Nov 11 2009 Jiri Popelka  1:1.4.2-3
- Fixed lspp-patch to avoid memory leak (bug #536741).
* Tue Nov 10 2009 Tim Waugh  1:1.4.2-2
- Added explicit version dependency on cups-libs to cups-lpd
(bug #502205).
* Tue Nov 10 2009 Tim Waugh  1:1.4.2-1
- 1.4.2.  No longer need str3380, str3332, str3356, str3396 patches.
- Removed postscript.ppd.gz (bug #533371).
- Renumbered patches and sources.";
tag_solution = "Apply the appropriate updates.

This update can be installed with the yum update program.  Use 
su -c 'yum update cups' at the command line.
For more information, refer to Managing Software with yum,
available at http://docs.fedoraproject.org/yum/.

https://secure1.securityspace.com/smysecure/catid.html?in=FEDORA-2009-11314";
tag_summary = "The remote host is missing an update to cups
announced via advisory FEDORA-2009-11314.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.66430");
 script_version("$Revision: 6624 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:11:55 +0200 (Mon, 10 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-12-10 00:23:54 +0100 (Thu, 10 Dec 2009)");
 script_cve_id("CVE-2009-2820", "CVE-2009-3553");
 script_tag(name:"cvss_base", value:"5.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
 script_name("Fedora Core 12 FEDORA-2009-11314 (cups)");



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
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=529833");
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=530111");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"cups", rpm:"cups~1.4.2~7.fc12", rls:"FC12")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"cups-devel", rpm:"cups-devel~1.4.2~7.fc12", rls:"FC12")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"cups-libs", rpm:"cups-libs~1.4.2~7.fc12", rls:"FC12")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"cups-lpd", rpm:"cups-lpd~1.4.2~7.fc12", rls:"FC12")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"cups-php", rpm:"cups-php~1.4.2~7.fc12", rls:"FC12")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"cups-debuginfo", rpm:"cups-debuginfo~1.4.2~7.fc12", rls:"FC12")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
