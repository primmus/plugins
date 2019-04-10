# OpenVAS Vulnerability Test
# $Id: fcore_2009_7012.nasl 6624 2017-07-10 06:11:55Z cfischer $
# Description: Auto-generated from advisory FEDORA-2009-7012 (irssi)
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
tag_insight = "Irssi is a modular IRC client with Perl scripting. Only text-mode
frontend is currently supported. The GTK/GNOME frontend is no longer
being maintained.

ChangeLog:

* Tue Jun 23 2009 Huzaifa Sidhpurwala  - 0.8.13-3
- Resolve CVE-2009-1959
* Fri May  1 2009 Marek Mahut  - 0.8.13-1
- Upstream release";
tag_solution = "Apply the appropriate updates.

This update can be installed with the yum update program.  Use 
su -c 'yum update irssi' at the command line.
For more information, refer to Managing Software with yum,
available at http://docs.fedoraproject.org/yum/.

https://secure1.securityspace.com/smysecure/catid.html?in=FEDORA-2009-7012";
tag_summary = "The remote host is missing an update to irssi
announced via advisory FEDORA-2009-7012.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.64550");
 script_version("$Revision: 6624 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:11:55 +0200 (Mon, 10 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-08-17 16:54:45 +0200 (Mon, 17 Aug 2009)");
 script_cve_id("CVE-2009-1959");
 script_tag(name:"cvss_base", value:"5.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
 script_name("Fedora Core 11 FEDORA-2009-7012 (irssi)");



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
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=504554");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"irssi", rpm:"irssi~0.8.13~3.fc11", rls:"FC11")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"irssi-devel", rpm:"irssi-devel~0.8.13~3.fc11", rls:"FC11")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"irssi-debuginfo", rpm:"irssi-debuginfo~0.8.13~3.fc11", rls:"FC11")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
