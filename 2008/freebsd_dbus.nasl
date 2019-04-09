#
#VID 5b47b70d-8ba9-11db-81d5-00123ffe8333
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
tag_insight = "The following package is affected: dbus";
tag_solution = "Update your system with the appropriate patches or
software upgrades.

http://www.freedesktop.org/wiki/Software/dbus
https://bugzilla.redhat.com/bugzilla/show_bug.cgi?id=218055
http://secunia.com/advisories/23373/
http://www.vuxml.org/freebsd/5b47b70d-8ba9-11db-81d5-00123ffe8333.html";
tag_summary = "The remote host is missing an update to the system
as announced in the referenced advisory.";

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.57730");
 script_version("$Revision: 4078 $");
 script_tag(name:"last_modification", value:"$Date: 2016-09-16 07:34:17 +0200 (Fri, 16 Sep 2016) $");
 script_tag(name:"creation_date", value:"2008-09-04 20:41:11 +0200 (Thu, 04 Sep 2008)");
 script_cve_id("CVE-2006-6107");
 script_tag(name:"cvss_base", value:"1.7");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:S/C:N/I:N/A:P");
 script_name("FreeBSD Ports: dbus");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2006 E-Soft Inc. http://www.securityspace.com");
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
bver = portver(pkg:"dbus");
if(!isnull(bver) && revcomp(a:bver, b:"1.0.2")<0) {
    txt += 'Package dbus version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}

if(vuln) {
    security_message(data:txt);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
