#
#VID 024edd06-c933-11dc-810c-0016179b2dd5
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
tag_insight = "The following packages are affected:
   xfce4-panel
   libxfce4gui

CVE-2007-6531
Stack-based buffer overflow in the Panel (xfce4-panel) component in
Xfce before 4.4.2 might allow remote attackers to execute arbitrary
code via Launcher tooltips.  NOTE: a second buffer overflow
(over-read) in the xfce_mkdirhier function was also reported, but it
might not be exploitable for a crash or code execution, so it is not a
vulnerability.

CVE-2007-6532
Double-free vulnerability in the Widget Library (libxfcegui4) in Xfce
before 4.4.2 might allow remote attackers to execute arbitrary code
via unknown vectors related to the 'cliend id, program name and
working directory in session management.'";
tag_solution = "Update your system with the appropriate patches or
software upgrades.

http://www.xfce.org/documentation/changelogs/4.4.2
http://www.gentoo.org/security/en/glsa/glsa-200801-06.xml
http://www.vuxml.org/freebsd/024edd06-c933-11dc-810c-0016179b2dd5.html";
tag_summary = "The remote host is missing an update to the system
as announced in the referenced advisory.";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.60227");
 script_version("$Revision: 4203 $");
 script_tag(name:"last_modification", value:"$Date: 2016-10-04 07:30:30 +0200 (Tue, 04 Oct 2016) $");
 script_tag(name:"creation_date", value:"2008-09-04 20:41:11 +0200 (Thu, 04 Sep 2008)");
 script_cve_id("CVE-2007-6531", "CVE-2007-6532");
 script_tag(name:"cvss_base", value:"10.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
 script_name("FreeBSD Ports: xfce4-panel, libxfce4gui");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2008 E-Soft Inc. http://www.securityspace.com");
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
bver = portver(pkg:"xfce4-panel");
if(!isnull(bver) && revcomp(a:bver, b:"4.4.1_1")>0) {
    txt += 'Package xfce4-panel version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"libxfce4gui");
if(!isnull(bver) && revcomp(a:bver, b:"4.4.1_1")>0) {
    txt += 'Package libxfce4gui version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}

if(vuln) {
    security_message(data:string(txt));
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
