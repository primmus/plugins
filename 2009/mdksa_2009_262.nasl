# OpenVAS Vulnerability Test
# $Id: mdksa_2009_262.nasl 6573 2017-07-06 13:10:50Z cfischer $
# Description: Auto-generated from advisory MDVSA-2009:262 (netpbm)
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
tag_insight = "A vulnerability has been found and corrected in netpbm:

pamperspective in Netpbm before 10.35.48 does not properly calculate
a window height, which allows context-dependent attackers to cause a
denial of service (crash) via a crafted image file that triggers an
out-of-bounds read (CVE-2008-4799).

This update fixes this vulnerability.

Affected: 2008.1, 2009.0, Corporate 4.0, Enterprise Server 5.0";
tag_solution = "To upgrade automatically use MandrakeUpdate or urpmi.  The verification
of md5 checksums and GPG signatures is performed automatically for you.

https://secure1.securityspace.com/smysecure/catid.html?in=MDVSA-2009:262";
tag_summary = "The remote host is missing an update to netpbm
announced via advisory MDVSA-2009:262.";

                                                                                

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.65740");
 script_version("$Revision: 6573 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-06 15:10:50 +0200 (Thu, 06 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-10-13 18:25:40 +0200 (Tue, 13 Oct 2009)");
 script_cve_id("CVE-2008-4799");
 script_tag(name:"cvss_base", value:"4.3");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:N/A:P");
 script_name("Mandrake Security Advisory MDVSA-2009:262 (netpbm)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("Mandrake Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/mandriva_mandrake_linux", "ssh/login/rpms");
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
if ((res = isrpmvuln(pkg:"libnetpbm10", rpm:"libnetpbm10~10.34~10.1mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm-devel", rpm:"libnetpbm-devel~10.34~10.1mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm-static-devel", rpm:"libnetpbm-static-devel~10.34~10.1mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"netpbm", rpm:"netpbm~10.34~10.1mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm10", rpm:"lib64netpbm10~10.34~10.1mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm-devel", rpm:"lib64netpbm-devel~10.34~10.1mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm-static-devel", rpm:"lib64netpbm-static-devel~10.34~10.1mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm10", rpm:"libnetpbm10~10.35.46~1.1mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm-devel", rpm:"libnetpbm-devel~10.35.46~1.1mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm-static-devel", rpm:"libnetpbm-static-devel~10.35.46~1.1mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"netpbm", rpm:"netpbm~10.35.46~1.1mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm10", rpm:"lib64netpbm10~10.35.46~1.1mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm-devel", rpm:"lib64netpbm-devel~10.35.46~1.1mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm-static-devel", rpm:"lib64netpbm-static-devel~10.35.46~1.1mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm10", rpm:"libnetpbm10~10.29~1.6.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm10-devel", rpm:"libnetpbm10-devel~10.29~1.6.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm10-static-devel", rpm:"libnetpbm10-static-devel~10.29~1.6.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"netpbm", rpm:"netpbm~10.29~1.6.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm10", rpm:"lib64netpbm10~10.29~1.6.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm10-devel", rpm:"lib64netpbm10-devel~10.29~1.6.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm10-static-devel", rpm:"lib64netpbm10-static-devel~10.29~1.6.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm10", rpm:"libnetpbm10~10.35.46~1.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm-devel", rpm:"libnetpbm-devel~10.35.46~1.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libnetpbm-static-devel", rpm:"libnetpbm-static-devel~10.35.46~1.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"netpbm", rpm:"netpbm~10.35.46~1.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm10", rpm:"lib64netpbm10~10.35.46~1.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm-devel", rpm:"lib64netpbm-devel~10.35.46~1.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64netpbm-static-devel", rpm:"lib64netpbm-static-devel~10.35.46~1.1mdvmes5", rls:"MNDK_mes5")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
