#
#VID 3e3c860d-7dae-11d9-a9e7-0001020eed82
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
   zh-emacs
   emacs
   xemacs
   xemacs-mule
   zh-xemacs
   zh-xemacs-mule
   xemacs-devel
   xemacs-devel-21.5
   xemacs-devel-mule
   mule-common
   hanemacs

CVE-2005-0100
Format string vulnerability in the movemail utility in (1) Emacs 20.x,
21.3, and possibly other versions, and (2) XEmacs 21.4 and earlier,
allows remote malicious POP3 servers to execute arbitrary code via
crafted packets.";
tag_summary = "The remote host is missing an update to the system
as announced in the referenced advisory.";

tag_solution = "Update your system with the appropriate patches or
software upgrades.";
if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.52188");
 script_version("$Revision: 4218 $");
 script_tag(name:"last_modification", value:"$Date: 2016-10-05 16:20:48 +0200 (Wed, 05 Oct 2016) $");
 script_tag(name:"creation_date", value:"2008-09-04 20:41:11 +0200 (Thu, 04 Sep 2008)");
 script_cve_id("CVE-2005-0100");
 script_bugtraq_id(12462);
 script_tag(name:"cvss_base", value:"7.5");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
 script_name("FreeBSD Ports: zh-emacs, emacs");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2005 E-Soft Inc. http://www.securityspace.com");
 script_family("FreeBSD Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/freebsdrel", "login/SSH/success");
 script_tag(name : "solution" , value : tag_solution);
 script_tag(name : "insight" , value : tag_insight);
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
bver = portver(pkg:"zh-emacs");
if(!isnull(bver) && revcomp(a:bver, b:"20.7_4")<0) {
    txt += 'Package zh-emacs version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
if(!isnull(bver) && revcomp(a:bver, b:"21")>0 && revcomp(a:bver, b:"21.3_4")<0) {
    txt += 'Package zh-emacs version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"emacs");
if(!isnull(bver) && revcomp(a:bver, b:"20.7_4")<0) {
    txt += 'Package emacs version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
if(!isnull(bver) && revcomp(a:bver, b:"21")>0 && revcomp(a:bver, b:"21.3_4")<0) {
    txt += 'Package emacs version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"xemacs");
if(!isnull(bver) && revcomp(a:bver, b:"21.4.17")<0) {
    txt += 'Package xemacs version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"xemacs-mule");
if(!isnull(bver) && revcomp(a:bver, b:"21.4.17")<0) {
    txt += 'Package xemacs-mule version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"zh-xemacs");
if(!isnull(bver) && revcomp(a:bver, b:"21.4.17")<0) {
    txt += 'Package zh-xemacs version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"zh-xemacs-mule");
if(!isnull(bver) && revcomp(a:bver, b:"21.4.17")<0) {
    txt += 'Package zh-xemacs-mule version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"xemacs-devel");
if(!isnull(bver) && revcomp(a:bver, b:"21.5.b19,1")<0) {
    txt += 'Package xemacs-devel version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"xemacs-devel-21.5");
if(!isnull(bver) && revcomp(a:bver, b:"b11")==0) {
    txt += 'Package xemacs-devel-21.5 version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"xemacs-devel-mule");
if(!isnull(bver) && revcomp(a:bver, b:"21.5.b19")<0) {
    txt += 'Package xemacs-devel-mule version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"mule-common");
if(!isnull(bver) && revcomp(a:bver, b:"0")>0) {
    txt += 'Package mule-common version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"hanemacs");
if(!isnull(bver) && revcomp(a:bver, b:"0")>0) {
    txt += 'Package hanemacs version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}

if(vuln) {
    security_message(data:string(txt));
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
