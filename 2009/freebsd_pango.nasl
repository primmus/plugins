#
#VID 4b172278-3f46-11de-becb-001cc0377035
# OpenVAS Vulnerability Test
# $
# Description: Auto generated from VID 4b172278-3f46-11de-becb-001cc0377035
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
   pango
   linux-pango
   linux-f8-pango

CVE-2009-1194
Integer overflow in the pango_glyph_string_set_size function in
pango/glyphstring.c in Pango before 1.24 allows context-dependent
attackers to cause a denial of service (application crash) or possibly
execute arbitrary code via a long glyph string that triggers a
heap-based buffer overflow, as demonstrated by a long
document.location value in Firefox.";
tag_solution = "Update your system with the appropriate patches or
software upgrades.

http://secunia.com/advisories/35021/
http://www.vuxml.org/freebsd/4b172278-3f46-11de-becb-001cc0377035.html";
tag_summary = "The remote host is missing an update to the system
as announced in the referenced advisory.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.64010");
 script_version("$Revision: 4847 $");
 script_tag(name:"last_modification", value:"$Date: 2016-12-23 10:33:16 +0100 (Fri, 23 Dec 2016) $");
 script_tag(name:"creation_date", value:"2009-05-20 00:17:15 +0200 (Wed, 20 May 2009)");
 script_cve_id("CVE-2009-1194");
 script_bugtraq_id(34870);
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
 script_name("FreeBSD Ports: pango, linux-pango, linux-f8-pango");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
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
bver = portver(pkg:"pango");
if(!isnull(bver) && revcomp(a:bver, b:"1.24")<0) {
    txt += 'Package pango version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"linux-pango");
if(!isnull(bver) && revcomp(a:bver, b:"1.24")<0) {
    txt += 'Package linux-pango version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}
bver = portver(pkg:"linux-f8-pango");
if(!isnull(bver) && revcomp(a:bver, b:"1.24")<0) {
    txt += 'Package linux-f8-pango version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}

if(vuln) {
    security_message(data:string(txt));
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
