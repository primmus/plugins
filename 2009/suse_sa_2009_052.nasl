# OpenVAS Vulnerability Test
# $Id: suse_sa_2009_052.nasl 6668 2017-07-11 13:34:29Z cfischer $
# Description: Auto-generated from advisory SUSE-SA:2009:052 (MozillaFirefox)
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
tag_insight = "The Mozilla Firefox browser was updated to fix various bugs and
security issues.

For details on the issues addressed in this update, please visit
the referenced security advisories.";
tag_solution = "Update your system with the packages as indicated in
the referenced security advisory.

https://secure1.securityspace.com/smysecure/catid.html?in=SUSE-SA:2009:052";
tag_summary = "The remote host is missing updates announced in
advisory SUSE-SA:2009:052.";

                                                                                

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.66214");
 script_version("$Revision: 6668 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-11 15:34:29 +0200 (Tue, 11 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-11-11 15:56:44 +0100 (Wed, 11 Nov 2009)");
 script_cve_id("CVE-2009-0689", "CVE-2009-3380", "CVE-2009-3379", "CVE-2009-3378", "CVE-2009-3274", "CVE-2009-3381", "CVE-2009-3382", "CVE-2009-3383", "CVE-2009-3371", "CVE-2009-3370", "CVE-2009-3373", "CVE-2009-3372", "CVE-2009-3375", "CVE-2009-3374", "CVE-2009-3377", "CVE-2009-3376");
 script_tag(name:"cvss_base", value:"10.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
 script_name("SuSE Security Advisory SUSE-SA:2009:052 (MozillaFirefox)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("SuSE Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/suse", "ssh/login/rpms");
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

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"MozillaFirefox-debuginfo", rpm:"MozillaFirefox-debuginfo~3.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"MozillaFirefox-debugsource", rpm:"MozillaFirefox-debugsource~3.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-debuginfo", rpm:"mozilla-xulrunner190-debuginfo~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-debugsource", rpm:"mozilla-xulrunner190-debugsource~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"MozillaFirefox", rpm:"MozillaFirefox~3.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"MozillaFirefox-branding-upstream", rpm:"MozillaFirefox-branding-upstream~3.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"MozillaFirefox-translations", rpm:"MozillaFirefox-translations~3.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190", rpm:"mozilla-xulrunner190~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-devel", rpm:"mozilla-xulrunner190-devel~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-gnomevfs", rpm:"mozilla-xulrunner190-gnomevfs~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-translations", rpm:"mozilla-xulrunner190-translations~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"python-xpcom190", rpm:"python-xpcom190~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"MozillaFirefox-debuginfo", rpm:"MozillaFirefox-debuginfo~3.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"MozillaFirefox-debugsource", rpm:"MozillaFirefox-debugsource~3.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-debuginfo", rpm:"mozilla-xulrunner190-debuginfo~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-debugsource", rpm:"mozilla-xulrunner190-debugsource~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"MozillaFirefox", rpm:"MozillaFirefox~3.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"MozillaFirefox-translations", rpm:"MozillaFirefox-translations~3.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190", rpm:"mozilla-xulrunner190~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-devel", rpm:"mozilla-xulrunner190-devel~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-gnomevfs", rpm:"mozilla-xulrunner190-gnomevfs~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-translations", rpm:"mozilla-xulrunner190-translations~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-64bit", rpm:"mozilla-xulrunner190-64bit~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-gnomevfs-64bit", rpm:"mozilla-xulrunner190-gnomevfs-64bit~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-translations-64bit", rpm:"mozilla-xulrunner190-translations-64bit~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-debuginfo-32bit", rpm:"mozilla-xulrunner190-debuginfo-32bit~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-32bit", rpm:"mozilla-xulrunner190-32bit~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-gnomevfs-32bit", rpm:"mozilla-xulrunner190-gnomevfs-32bit~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-translations-32bit", rpm:"mozilla-xulrunner190-translations-32bit~1.9.0.15~0.1.2", rls:"openSUSE11.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-32bit", rpm:"mozilla-xulrunner190-32bit~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-gnomevfs-32bit", rpm:"mozilla-xulrunner190-gnomevfs-32bit~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"mozilla-xulrunner190-translations-32bit", rpm:"mozilla-xulrunner190-translations-32bit~1.9.0.15~0.1", rls:"openSUSE11.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
