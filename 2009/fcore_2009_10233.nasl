# OpenVAS Vulnerability Test
# $Id: fcore_2009_10233.nasl 6624 2017-07-10 06:11:55Z cfischer $
# Description: Auto-generated from advisory FEDORA-2009-10233 (deltarpm)
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

deltarpm prior to the current build ships with a bundled copy of zlib.  This
version of zlib has a known vulnerability with CVE identifier: CVE-2005-1849
This build of deltarpm patches the program to use the system zlib (which was
fixed when the vulnerability was first discovered) instead of the bundled copy.

ChangeLog:

* Wed Sep 30 2009 Toshio Kuratomi  - 3.4-11.1
- Build against the system zlib, not the bundled library.  This remedies the
fact that the included zlib is affected by CVE-2005-1849.
- Fix cfile_detect_rsync() to detect rsync even if we don't have a zlib capable
of making rsync-friendly compressed files.";
tag_solution = "Apply the appropriate updates.

This update can be installed with the yum update program.  Use 
su -c 'yum update deltarpm' at the command line.
For more information, refer to Managing Software with yum,
available at http://docs.fedoraproject.org/yum/.

https://secure1.securityspace.com/smysecure/catid.html?in=FEDORA-2009-10233";
tag_summary = "The remote host is missing an update to deltarpm
announced via advisory FEDORA-2009-10233.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.65744");
 script_version("$Revision: 6624 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:11:55 +0200 (Mon, 10 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-10-13 18:25:40 +0200 (Tue, 13 Oct 2009)");
 script_cve_id("CVE-2005-1849");
 script_tag(name:"cvss_base", value:"5.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
 script_name("Fedora Core 10 FEDORA-2009-10233 (deltarpm)");



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
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=526432");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"deltarpm", rpm:"deltarpm~3.4~11.fc10.1", rls:"FC10")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"deltarpm-debuginfo", rpm:"deltarpm-debuginfo~3.4~11.fc10.1", rls:"FC10")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
