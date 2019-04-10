# OpenVAS Vulnerability Test
# $Id: RHSA_2009_1504.nasl 6683 2017-07-12 09:41:57Z cfischer $
# Description: Auto-generated from advisory RHSA-2009:1504 ()
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
tag_summary = "The remote host is missing updates announced in
advisory RHSA-2009:1504.

Poppler is a Portable Document Format (PDF) rendering library, used by
applications such as Evince.

Multiple integer overflow flaws were found in poppler. An attacker could
create a malicious PDF file that would cause applications that use poppler
(such as Evince) to crash or, potentially, execute arbitrary code when
opened. (CVE-2009-3603, CVE-2009-3608, CVE-2009-3609)

Red Hat would like to thank Chris Rohlf for reporting the CVE-2009-3608
issue.

This update also corrects a regression introduced in the previous poppler
security update, RHSA-2009:0480, that prevented poppler from rendering
certain PDF documents correctly. (BZ#528147)

Users are advised to upgrade to these updated packages, which contain
backported patches to resolve these issues.";

tag_solution = "Please note that this update is available via
Red Hat Network.  To use Red Hat Network, launch the Red
Hat Update Agent with the following command: up2date";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.66016");
 script_version("$Revision: 6683 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-12 11:41:57 +0200 (Wed, 12 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-10-19 21:50:22 +0200 (Mon, 19 Oct 2009)");
 script_cve_id("CVE-2009-3603", "CVE-2009-3608", "CVE-2009-3609");
 script_tag(name:"cvss_base", value:"9.3");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
 script_name("RedHat Security Advisory RHSA-2009:1504");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("Red Hat Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/rhel", "ssh/login/rpms");
 script_tag(name : "solution" , value : tag_solution);
 script_tag(name : "summary" , value : tag_summary);
 script_tag(name:"qod_type", value:"package");
 script_tag(name:"solution_type", value:"VendorFix");
 script_xref(name : "URL" , value : "http://rhn.redhat.com/errata/RHSA-2009-1504.html");
 script_xref(name : "URL" , value : "http://www.redhat.com/security/updates/classification/#important");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"poppler", rpm:"poppler~0.5.4~4.4.el5_4.11", rls:"RHENT_5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"poppler-debuginfo", rpm:"poppler-debuginfo~0.5.4~4.4.el5_4.11", rls:"RHENT_5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"poppler-utils", rpm:"poppler-utils~0.5.4~4.4.el5_4.11", rls:"RHENT_5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"poppler-devel", rpm:"poppler-devel~0.5.4~4.4.el5_4.11", rls:"RHENT_5")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
