###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for php-pear-DB FEDORA-2007-0249
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
tag_insight = "DB is a database abstraction layer providing:
  * an OO-style query API
  * portability features that make programs written for one DBMS work with
    other DBMS's
  * a DSN (data source name) format for specifying database servers
  * prepare/execute (bind) emulation for databases that don't support it natively
  * a result object for each query response
  * portable error codes
  * sequence emulation
  * sequential and non-sequential row fetching as well as bulk fetching
  * formats fetched rows as associative arrays, ordered arrays or objects
  * row limit support
  * transactions support
  * table information interface
  * DocBook and phpDocumentor API documentation

  DB layers itself on top of PHP's existing database extensions.";

tag_affected = "php-pear-DB on Fedora 7";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "https://www.redhat.com/archives/fedora-package-announce/2007-June/msg00055.html");
  script_oid("1.3.6.1.4.1.25623.7.0.861270");
  script_version("$Revision: 6623 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:10:20 +0200 (Mon, 10 Jul 2017) $");
  script_tag(name:"creation_date", value:"2009-02-27 16:31:39 +0100 (Fri, 27 Feb 2009)");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_xref(name: "FEDORA", value: "2007-0249");
  script_cve_id("CVE-2006-2313", "CVE-2006-2314");
  script_name( "Fedora Update for php-pear-DB FEDORA-2007-0249");

  script_tag(name:"summary", value:"Check for the Version of php-pear-DB");
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

if(release == "FC7")
{

  if ((res = isrpmvuln(pkg:"php-pear-DB", rpm:"php-pear-DB~1.7.11~1.fc7", rls:"FC7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"php-pear-DB", rpm:"php-pear-DB~1.7.11~1.fc7", rls:"FC7")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
