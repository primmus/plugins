# OpenVAS Vulnerability Test
# $Id: ubuntu_783_1.nasl 8616 2018-02-01 08:24:13Z cfischer $
# $Id: ubuntu_783_1.nasl 8616 2018-02-01 08:24:13Z cfischer $
# Description: Auto-generated from advisory USN-783-1 (ecryptfs-utils)
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
  ecryptfs-utils                  73-0ubuntu6.1

In general, a standard system upgrade is sufficient to effect the
necessary changes.

https://secure1.securityspace.com/smysecure/catid.html?in=USN-783-1";

tag_insight = "Chris Jones discovered that the eCryptfs support utilities would
report the mount passphrase into installation logs when an eCryptfs
home directory was selected during Ubuntu installation.  The logs are
only readable by the root user, but this still left the mount passphrase
unencrypted on disk, potentially leading to a loss of privacy.";
tag_summary = "The remote host is missing an update to ecryptfs-utils
announced via advisory USN-783-1.";

                                                                                


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.64190");
 script_version("$Revision: 8616 $");
 script_tag(name:"last_modification", value:"$Date: 2018-02-01 09:24:13 +0100 (Thu, 01 Feb 2018) $");
 script_tag(name:"creation_date", value:"2009-06-09 19:38:29 +0200 (Tue, 09 Jun 2009)");
 script_cve_id("CVE-2009-1296");
 script_tag(name:"cvss_base", value:"1.9");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:P/I:N/A:N");
 script_name("Ubuntu USN-783-1 (ecryptfs-utils)");



 script_category(ACT_GATHER_INFO);
 script_xref(name: "URL" , value: "http://www.ubuntu.com/usn/usn-783-1/");

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
if ((res = isdpkgvuln(pkg:"ecryptfs-utils", ver:"73-0ubuntu6.1", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libecryptfs-dev", ver:"73-0ubuntu6.1", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libecryptfs0", ver:"73-0ubuntu6.1", rls:"UBUNTU9.04")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(port:0, data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
