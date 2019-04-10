#
#VID f98dea27-d687-11dd-abd1-0050568452ac
# OpenVAS Vulnerability Test
# $
# Description: Auto generated from VID f98dea27-d687-11dd-abd1-0050568452ac
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
tag_insight = "The following package is affected: twiki

CVE-2008-5304
Cross-site scripting (XSS) vulnerability in TWiki before 4.2.4 allows
remote attackers to inject arbitrary web script or HTML via the
%URLPARAM{}% variable.
CVE-2008-5305
Eval injection vulnerability in TWiki before 4.2.4 allows remote
attackers to execute arbitrary Perl code via the %SEARCH{}% variable.";
tag_solution = "Update your system with the appropriate patches or
software upgrades.

http://secunia.com/advisories/33040
http://twiki.org/cgi-bin/view/Codev/SecurityAlert-CVE-2008-5304
http://twiki.org/cgi-bin/view/Codev/SecurityAlert-CVE-2008-5305
http://www.securitytracker.com/alerts/2008/Dec/1021351.html
http://www.securitytracker.com/alerts/2008/Dec/1021352.html
https://www.it-isac.org/postings/cyber/alertdetail.php?id=4513
http://xforce.iss.net/xforce/xfdb/45293
http://www.vuxml.org/freebsd/f98dea27-d687-11dd-abd1-0050568452ac.html";
tag_summary = "The remote host is missing an update to the system
as announced in the referenced advisory.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.63093");
 script_version("$Revision: 4865 $");
 script_tag(name:"last_modification", value:"$Date: 2016-12-28 17:16:43 +0100 (Wed, 28 Dec 2016) $");
 script_tag(name:"creation_date", value:"2009-01-02 18:22:54 +0100 (Fri, 02 Jan 2009)");
 script_cve_id("CVE-2008-5304", "CVE-2008-5305");
 script_bugtraq_id(32668,32669);
 script_tag(name:"cvss_base", value:"10.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
 script_name("FreeBSD Ports: twiki");



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
bver = portver(pkg:"twiki");
if(!isnull(bver) && revcomp(a:bver, b:"4.2.4,1")<0) {
    txt += 'Package twiki version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}

if(vuln) {
    security_message(data:string(txt));
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
