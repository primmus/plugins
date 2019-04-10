# OpenVAS Vulnerability Test
# $Id: fcore_2009_1736.nasl 6624 2017-07-10 06:11:55Z cfischer $
# Description: Auto-generated from advisory FEDORA-2009-1736 (fail2ban)
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
tag_insight = "Fail2ban scans log files like /var/log/pwdfail or
/var/log/apache/error_log and bans IP that makes too many password
failures. It updates firewall rules to reject the IP address.

Update Information:

This updates fixes CVE-2009-0362. See     http://cve.mitre.org/cgi-
bin/cvename.cgi?name=CVE-2009-0362    for further details.
ChangeLog:

* Sat Feb 14 2009 Axel Thimm  - 0.8.3-18
- Fix CVE-2009-0362 (Fedora bugs #485461, #485464, #485465, #485466).
* Mon Dec  1 2008 Ignacio Vazquez-Abrams  - 0.8.3-17
- Rebuild for Python 2.6
* Sun Aug 24 2008 Axel Thimm  - 0.8.3-16
- Update to 0.8.3.
* Wed May 21 2008 Tom spot Callaway  - 0.8.2-15
- fix license tag
* Thu Mar 27 2008 Axel Thimm  - 0.8.2-14
- Close on exec fixes by Jonathan Underwood.";
tag_solution = "Apply the appropriate updates.

This update can be installed with the yum update program.  Use 
su -c 'yum update fail2ban' at the command line.
For more information, refer to Managing Software with yum,
available at http://docs.fedoraproject.org/yum/.

https://secure1.securityspace.com/smysecure/catid.html?in=FEDORA-2009-1736";
tag_summary = "The remote host is missing an update to fail2ban
announced via advisory FEDORA-2009-1736.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.63407");
 script_version("$Revision: 6624 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:11:55 +0200 (Mon, 10 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-02-18 23:13:28 +0100 (Wed, 18 Feb 2009)");
 script_cve_id("CVE-2009-0362");
 script_tag(name:"cvss_base", value:"4.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:N/I:N/A:P");
 script_name("Fedora Core 9 FEDORA-2009-1736 (fail2ban)");



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
 script_xref(name : "URL" , value : "https://bugzilla.redhat.com/show_bug.cgi?id=485461");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"fail2ban", rpm:"fail2ban~0.8.3~18.fc9", rls:"FC9")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
