# OpenVAS Vulnerability Test
# $
# Description: Auto generated from Gentoo's XML based advisory
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
tag_insight = "PHP suffers from multiple issues, resulting in security functions bypass,
local Denial of service, cross-site scripting or PHP variables overwrite.";
tag_solution = "All PHP users should upgrade to the latest version:

    # emerge --sync
    # emerge --ask --oneshot --verbose dev-php/php

All mod_php users should upgrade to the latest version:

    # emerge --sync
    # emerge --ask --oneshot --verbose dev-php/mod_php

All php-cgi users should upgrade to the latest version:

    # emerge --sync
    # emerge --ask --oneshot --verbose dev-php/php-cgi

http://www.securityspace.com/smysecure/catid.html?in=GLSA%20200511-08
http://bugs.gentoo.org/show_bug.cgi?id=107602
http://bugs.gentoo.org/show_bug.cgi?id=111032";
tag_summary = "The remote host is missing updates announced in
advisory GLSA 200511-08.";

                                                                                

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.55857");
 script_version("$Revision: 6596 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 11:21:37 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-09-24 21:14:03 +0200 (Wed, 24 Sep 2008)");
 script_cve_id("CVE-2005-3054", "CVE-2005-3319", "CVE-2005-3388", "CVE-2005-3389", "CVE-2005-3390", "CVE-2005-3391", "CVE-2005-3392");
 script_tag(name:"cvss_base", value:"7.5");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
 script_name("Gentoo Security Advisory GLSA 200511-08 (PHP)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2005 E-Soft Inc. http://www.securityspace.com");
 script_family("Gentoo Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/gentoo", "ssh/login/pkg");
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

include("pkg-lib-gentoo.inc");

res = "";
report = "";
if ((res = ispkgvuln(pkg:"dev-php/php", unaffected: make_list("rge 4.3.11-r4", "ge 4.4.0-r4"), vulnerable: make_list("lt 4.4.0-r4"))) != NULL) {
    report += res;
}
if ((res = ispkgvuln(pkg:"dev-php/mod_php", unaffected: make_list("rge 4.3.11-r4", "ge 4.4.0-r8"), vulnerable: make_list("lt 4.4.0-r8"))) != NULL) {
    report += res;
}
if ((res = ispkgvuln(pkg:"dev-php/php-cgi", unaffected: make_list("rge 4.3.11-r5", "ge 4.4.0-r5"), vulnerable: make_list("lt 4.4.0-r5"))) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
