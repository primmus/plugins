###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ubuntu_USN_930_3.nasl 8510 2018-01-24 07:57:42Z teissa $
#
# Ubuntu Update for firefox regression USN-930-3
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2010 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

include("revisions-lib.inc");
tag_insight = "USN-930-1 fixed vulnerabilities in Firefox. Due to a software packaging
  problem, the Firefox 3.6 update could not be installed when the firefox-2
  package was also installed. This update fixes the problem and updates
  apturl for the change.

  Original advisory details:
  
  If was discovered that Firefox could be made to access freed memory. If a
  user were tricked into viewing a malicious site, a remote attacker could
  cause a denial of service or possibly execute arbitrary code with the
  privileges of the user invoking the program. This issue only affected
  Ubuntu 8.04 LTS. (CVE-2010-1121)
  
  Several flaws were discovered in the browser engine of Firefox. If a
  user were tricked into viewing a malicious site, a remote attacker could
  cause a denial of service or possibly execute arbitrary code with the
  privileges of the user invoking the program. (CVE-2010-1200, CVE-2010-1201,
  CVE-2010-1202, CVE-2010-1203)
  
  A flaw was discovered in the way plugin instances interacted. An attacker
  could potentially exploit this and use one plugin to access freed memory from a
  second plugin to execute arbitrary code with the privileges of the user
  invoking the program. (CVE-2010-1198)
  
  An integer overflow was discovered in Firefox. If a user were tricked into
  viewing a malicious site, an attacker could overflow a buffer and cause a
  denial of service or possibly execute arbitrary code with the privileges of
  the user invoking the program. (CVE-2010-1196)
  
  Martin Barbella discovered an integer overflow in an XSLT node sorting
  routine. An attacker could exploit this to overflow a buffer and cause a
  denial of service or possibly execute arbitrary code with the privileges of
  the user invoking the program. (CVE-2010-1199)
  
  Michal Zalewski discovered that the focus behavior of Firefox could be
  subverted. If a user were tricked into viewing a malicious site, a remote
  attacker could use this to capture keystrokes. (CVE-2010-1125)
  
  Ilja van Sprundel discovered that the 'Content-Disposition: attachment'
  HTTP header was ignored when 'Content-Type: multipart' was also present.
  Under certain circumstances, this could potentially lead to cross-site
  scripting attacks. (CVE-2010-1197)
  
  Amit Klein discovered that Firefox did not seed its random number generator
  often enough. An attacker could exploit this to identify and track users
  across different web sites. (CVE-2008-5913)";

tag_summary = "Ubuntu Update for Linux kernel vulnerabilities USN-930-3";
tag_affected = "firefox regression on Ubuntu 8.04 LTS";
tag_solution = "Please Install the Updated Packages.";


if(description)
{
  script_xref(name: "URL" , value: "http://www.ubuntu.com/usn/usn-930-3/");
  script_oid("1.3.6.1.4.1.25623.1.0.840454");
  script_version("$Revision: 8510 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-24 08:57:42 +0100 (Wed, 24 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-07-02 14:26:21 +0200 (Fri, 02 Jul 2010)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_xref(name: "USN", value: "930-3");
  script_cve_id("CVE-2010-1121", "CVE-2010-1200", "CVE-2010-1201", "CVE-2010-1202", "CVE-2010-1203", "CVE-2010-1198", "CVE-2010-1196", "CVE-2010-1199", "CVE-2010-1125", "CVE-2010-1197", "CVE-2008-5913");
  script_name("Ubuntu Update for firefox regression USN-930-3");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages");
  script_tag(name : "summary" , value : tag_summary);
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("pkg-lib-deb.inc");

release = get_kb_item("ssh/login/release");


res = "";
if(release == NULL){
  exit(0);
}

if(release == "UBUNTU8.04 LTS")
{

  if ((res = isdpkgvuln(pkg:"abrowser-branding", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-branding", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-dbg", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-dev", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-gnome-support-dbg", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-gnome-support", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"apturl", ver:"0.2.2ubuntu1.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"abrowser", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-3.0-dev", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-3.0-gnome-support", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-3.0", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-granparadiso-dev", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-trunk-dev", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-granparadiso-gnome-support", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-granparadiso", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-libthai", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-trunk-gnome-support", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isdpkgvuln(pkg:"firefox-trunk", ver:"3.6.6+nobinonly-0ubuntu0.8.04.2", rls:"UBUNTU8.04 LTS")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
