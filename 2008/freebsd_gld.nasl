#
#VID 6c2d4f29-af3e-11d9-837d-000e0c2e438a
# OpenVAS Vulnerability Test
# $
# Description: Auto generated from vuxml or freebsd advisories
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
tag_insight = "The following package is affected: gld

CVE-2005-1099
Multiple buffer overflows in the HandleChild function in server.c in
Greylisting daemon (GLD) 1.3 and 1.4, when GLD is listening on a
network interface, allow remote attackers to execute arbitrary code.

CVE-2005-1100
Format string vulnerability in the ErrorLog function in cnf.c in
Greylisting daemon (GLD) 1.3 and 1.4 allows remote attackers to
execute arbitrary code via format string specifiers in data that is
passed directly to syslog.";
tag_solution = "Update your system with the appropriate patches or
software upgrades.

http://marc.theaimsgroup.com/?l=bugtraq&m=111339935903880
http://marc.theaimsgroup.com/?l=bugtraq&m=111342432325670
http://www.vuxml.org/freebsd/6c2d4f29-af3e-11d9-837d-000e0c2e438a.html";
tag_summary = "The remote host is missing an update to the system
as announced in the referenced advisory.";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.52130");
 script_version("$Revision: 4118 $");
 script_tag(name:"last_modification", value:"$Date: 2016-09-20 07:32:38 +0200 (Tue, 20 Sep 2016) $");
 script_tag(name:"creation_date", value:"2008-09-04 20:41:11 +0200 (Thu, 04 Sep 2008)");
 script_cve_id("CVE-2005-1099", "CVE-2005-1100");
 script_bugtraq_id(13129,13133);
 script_tag(name:"cvss_base", value:"10.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
 script_name("FreeBSD Ports: gld");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2005 E-Soft Inc. http://www.securityspace.com");
 script_family("FreeBSD Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/freebsdrel", "login/SSH/success");
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

include("pkg-lib-bsd.inc");

txt = "";
vuln = 0;
bver = portver(pkg:"gld");
if(!isnull(bver) && revcomp(a:bver, b:"1.5")<0) {
    txt += 'Package gld version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}

if(vuln) {
    security_message(data:string(txt));
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
