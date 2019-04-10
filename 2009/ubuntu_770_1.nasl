# OpenVAS Vulnerability Test
# $Id: ubuntu_770_1.nasl 7969 2017-12-01 09:23:16Z santu $
# $Id: ubuntu_770_1.nasl 7969 2017-12-01 09:23:16Z santu $
# Description: Auto-generated from advisory USN-770-1 (clamav)
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

Ubuntu 9.04:
  clamav-milter                   0.95.1+dfsg-1ubuntu1.2

In general, a standard system upgrade is sufficient to effect the
necessary changes.

https://secure1.securityspace.com/smysecure/catid.html?in=USN-770-1";

tag_insight = "A flaw was discovered in the clamav-milter initscript which caused the
ownership of the current working directory to be changed to the 'clamav'
user. This update attempts to repair the incorrect ownership for standard
system directories, but it is recommended that the following command be
performed to report any other directories that may be affected:

  $ sudo find -H / -type d -user clamav \! -group clamav 2>/dev/null

Systems configured to run clamav as a user other than the default 'clamav'
user will need to adjust the above command accordingly.";
tag_summary = "The remote host is missing an update to clamav
announced via advisory USN-770-1.";

                                                                                


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.64145");
 script_cve_id("CVE-2009-1601");
 script_version("$Revision: 7969 $");
 script_tag(name:"last_modification", value:"$Date: 2017-12-01 10:23:16 +0100 (Fri, 01 Dec 2017) $");
 script_tag(name:"creation_date", value:"2009-06-05 18:04:08 +0200 (Fri, 05 Jun 2009)");
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:S/C:C/I:C/A:C");
 script_name("Ubuntu USN-770-1 (clamav)");



 script_category(ACT_GATHER_INFO);
 script_xref(name: "URL" , value: "http://www.ubuntu.com/usn/usn-770-1/");

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
if ((res = isdpkgvuln(pkg:"clamav-base", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"clamav-docs", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"clamav-testfiles", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"clamav-daemon", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"clamav-dbg", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"clamav-freshclam", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"clamav", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libclamav-dev", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libclamav6", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"clamav-milter", ver:"0.95.1+dfsg-1ubuntu1.2", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
