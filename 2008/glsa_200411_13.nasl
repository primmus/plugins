# OpenVAS Vulnerability Test
# $
# Description: Auto generated from Gentoo's XML based advisory
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2008 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisories, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
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
tag_insight = "dispatch-conf (included in Portage) and qpkg (included in Gentoolkit) are
vulnerable to symlink attacks, potentially allowing a local user to
overwrite arbitrary files with the rights of the user running the script.";
tag_solution = "All Portage users should upgrade to the latest version:

    # emerge --sync
    # emerge --ask --oneshot --verbose '>=sys-apps/portage-2.0.51-r3'

All Gentoolkit users should upgrade to the latest version:

    # emerge --sync
    # emerge --ask --oneshot --verbose
'>=app-portage/gentoolkit-0.2.0_pre8-r1'
    

http://www.securityspace.com/smysecure/catid.html?in=GLSA%20200411-13
http://bugs.gentoo.org/show_bug.cgi?id=68846
http://bugs.gentoo.org/show_bug.cgi?id=69147";
tag_summary = "The remote host is missing updates announced in
advisory GLSA 200411-13.";

                                                                                

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.54734");
 script_cve_id("CVE-2004-1107","CVE-2004-1108");
 script_tag(name:"cvss_base", value:"2.1");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:N/I:P/A:N");
 script_version("$Revision: 6596 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 11:21:37 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-09-24 21:14:03 +0200 (Wed, 24 Sep 2008)");
 script_name("Gentoo Security Advisory GLSA 200411-13 (portage gentoolkit)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2005 E-Soft Inc. http://www.securityspace.com");
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
if ((res = ispkgvuln(pkg:"sys-apps/portage", unaffected: make_list("ge 2.0.51-r3"), vulnerable: make_list("le 2.0.51-r2"))) != NULL) {
    report += res;
}
if ((res = ispkgvuln(pkg:"app-portage/gentoolkit", unaffected: make_list("ge 0.2.0_pre10-r1", "rge 0.2.0_pre8-r1"), vulnerable: make_list("le 0.2.0_pre10"))) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
