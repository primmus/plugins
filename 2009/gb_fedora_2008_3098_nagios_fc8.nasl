###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for nagios FEDORA-2008-3098
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2009 Greenbone Networks GmbH, http://www.greenbone.net
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
tag_insight = "Nagios is a program that will monitor hosts and services on your
  network.  It has the ability to send email or page alerts when a
  problem arises and when a problem is resolved.  Nagios is written
  in C and is designed to run under Linux (and some other *NIX
  variants) as a background process, intermittently running checks
  on various services that you specify.

  The actual service checks are performed by separate &quot;plugin&quot; programs
  which return the status of the checks to Nagios. The plugins are
  available at <a  rel= &qt nofollow &qt  href= &qt http://sourceforge.net/projects/nagiosplug &qt >http://sourceforge.net/projects/nagiosplug</a>.
  
  This package provides the core program, web interface, and documentation
  files for Nagios. Development files are built as a separate package.";

tag_affected = "nagios on Fedora 8";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "https://www.redhat.com/archives/fedora-package-announce/2008-April/msg00282.html");
  script_oid("1.3.6.1.4.1.25623.7.0.860595");
  script_version("$Revision: 6623 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:10:20 +0200 (Mon, 10 Jul 2017) $");
  script_tag(name:"creation_date", value:"2009-02-17 16:43:56 +0100 (Tue, 17 Feb 2009)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_xref(name: "FEDORA", value: "2008-3098");
  script_cve_id("CVE-2007-5198");
  script_name( "Fedora Update for nagios FEDORA-2008-3098");

  script_tag(name:"summary", value:"Check for the Version of nagios");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2009 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");


res = "";
if(release == NULL){
  exit(0);
}

if(release == "FC8")
{

  if ((res = isrpmvuln(pkg:"nagios", rpm:"nagios~2.11~3.fc8", rls:"FC8")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
