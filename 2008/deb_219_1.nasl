# OpenVAS Vulnerability Test
# $Id: deb_219_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 219-1
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2007 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largerly excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
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
tag_insight = "Simon Kelly discovered a vulnerability in dhcpcd, an RFC2131 and
RFC1541 compliant DHCP client daemon, that runs with root privileges
on client machines.  A malicious administrator of the regular or an
untrusted DHCP server may execute any command with root privileges on
the DHCP client machine by sending the command enclosed in shell
metacharacters in one of the options provided by the DHCP server.

This problem has been fixed in version 1.3.17pl2-8.1 for the old
stable distribution (potato) and in version 1.3.22pl2-2 for the
testing (sarge) and unstable (sid) distributions.  The current stable
distribution (woody) does not contain a dhcpcd package.

We recommend that you upgrade your dhcpcd package (on the client";
tag_summary = "The remote host is missing an update to dhcpcd
announced via advisory DSA 219-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%20219-1";

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.53741");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 22:28:10 +0100 (Thu, 17 Jan 2008)");
 script_cve_id("CVE-2002-1403");
 script_bugtraq_id(6200);
 script_tag(name:"cvss_base", value:"7.2");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:C/I:C/A:C");
 script_name("Debian Security Advisory DSA 219-1 (dhcpcd)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2005 E-Soft Inc. http://www.securityspace.com");
 script_family("Debian Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
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

include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"dhcpcd", ver:"1.3.17pl2-8.1", rls:"DEB2.2")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
