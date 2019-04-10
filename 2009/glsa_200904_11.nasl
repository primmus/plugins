#
# OpenVAS Vulnerability Test
# $
# Description: Auto generated from Gentoo's XML based advisory
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisories, and are Copyright (c) the respective author(s)
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
tag_insight = "Multiple vulnerabilities in Tor might allow for heap corruption, Denial of
Service, escalation of privileges and information disclosure.";
tag_solution = "All Tor users should upgrade to the latest version:

    # emerge --sync
    # emerge --ask --oneshot --verbose '>=net-misc/tor-0.2.0.34'

http://www.securityspace.com/smysecure/catid.html?in=GLSA%20200904-11
http://bugs.gentoo.org/show_bug.cgi?id=250018
http://bugs.gentoo.org/show_bug.cgi?id=256078
http://bugs.gentoo.org/show_bug.cgi?id=258833";
tag_summary = "The remote host is missing updates announced in
advisory GLSA 200904-11.";

                                                                                
                                                                                

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.63805");
 script_version("$Revision: 6595 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 11:19:55 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-04-15 22:11:00 +0200 (Wed, 15 Apr 2009)");
 script_cve_id("CVE-2008-5397", "CVE-2008-5398", "CVE-2009-0414", "CVE-2009-0936", "CVE-2009-0937", "CVE-2009-0938", "CVE-2009-0939");
 script_tag(name:"cvss_base", value:"10.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
 script_name("Gentoo Security Advisory GLSA 200904-11 (tor)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("Gentoo Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/gentoo", "ssh/login/pkg");
 script_tag(name : "insight" , value : tag_insight);
 script_tag(name : "solution" , value : tag_solution);
 script_tag(name : "summary" , value : tag_summary);
 script_tag(name:"qod_type", value:"package");
 script_tag(name:"solution_type", value:"VendorFix");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-gentoo.inc");

res = "";
report = "";
if ((res = ispkgvuln(pkg:"net-misc/tor", unaffected: make_list("ge 0.2.0.34"), vulnerable: make_list("lt 0.2.0.34"))) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
