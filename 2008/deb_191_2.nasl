# OpenVAS Vulnerability Test
# $Id: deb_191_2.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 191-2
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
tag_insight = "The security update for Squirrelmail (DSA 191-1) unfortunately
introduced a bug in the options page.  This problem is fixed in
version 1.2.6-1.2 the current stable distribution (woody).  The
unstable distribution (sid) and the old stable distribution (potato)
were not affected by this.  For completeness please find below the
original security advisory:

Several cross site scripting vulnerabilities have been found in
squirrelmail, a feature-rich webmail package written in PHP4.  The
Common Vulnerabilities and Exposures (CVE) project identified the
following vulnerabilities:

1. CVE-2002-1131: User input is not always sanitized so execution
of arbitrary code on a client computer is possible.  This can
happen after following a malicious URL or by viewing a
malicious addressbook entry.

2. CVE-2002-1132: Another problem could make it possible for an
attacker to gain sensitive information under some conditions.
When a malformed argument is appended to a link, an error page
will be generated which contains the absolute pathname of the
script.  However, this information is available through the
Contents file of the distribution anyway.";
tag_summary = "The remote host is missing an update to squirrelmail
announced via advisory DSA 191-2.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%20191-2";

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.53764");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-01-17 22:24:46 +0100 (Thu, 17 Jan 2008)");
 script_cve_id("CVE-2002-1131", "CVE-2002-1132");
 script_bugtraq_id(5949);
 script_tag(name:"cvss_base", value:"7.5");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
 script_name("Debian Security Advisory DSA 191-2 (squirrelmail)");



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
if ((res = isdpkgvuln(pkg:"squirrelmail", ver:"1.2.6-1.2", rls:"DEB3.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
