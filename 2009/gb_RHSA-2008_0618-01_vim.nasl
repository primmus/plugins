###############################################################################
# OpenVAS Vulnerability Test
#
# RedHat Update for vim RHSA-2008:0618-01
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
tag_insight = "Vim (Visual editor IMproved) is an updated and improved version of the vi
  editor.

  Several input sanitization flaws were found in Vim's keyword and tag
  handling. If Vim looked up a document's maliciously crafted tag or keyword,
  it was possible to execute arbitrary code as the user running Vim.
  (CVE-2008-4101)
  
  Several input sanitization flaws were found in various Vim system
  functions. If a user opened a specially crafted file, it was possible to
  execute arbitrary code as the user running Vim. (CVE-2008-2712)
  
  All Vim users are advised to upgrade to these updated packages, which
  contain backported patches to correct these issues.";

tag_affected = "vim on Red Hat Enterprise Linux AS (Advanced Server) version 2.1,
  Red Hat Enterprise Linux ES version 2.1,
  Red Hat Enterprise Linux WS version 2.1";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "https://www.redhat.com/archives/rhsa-announce/2008-November/msg00014.html");
  script_oid("1.3.6.1.4.1.25623.7.0.870052");
  script_version("$Revision: 6683 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-12 11:41:57 +0200 (Wed, 12 Jul 2017) $");
  script_tag(name:"creation_date", value:"2009-03-06 07:30:35 +0100 (Fri, 06 Mar 2009)");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_xref(name: "RHSA", value: "2008:0618-01");
  script_cve_id("CVE-2008-2712", "CVE-2008-4101");
  script_name( "RedHat Update for vim RHSA-2008:0618-01");

  script_tag(name:"summary", value:"Check for the Version of vim");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2009 Greenbone Networks GmbH");
  script_family("Red Hat Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/rhel", "ssh/login/rpms");
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

if(release == "RHENT_2.1")
{

  if ((res = isrpmvuln(pkg:"vim-X11", rpm:"vim-X11~6.0~7.25", rls:"RHENT_2.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"vim-common", rpm:"vim-common~6.0~7.25", rls:"RHENT_2.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"vim-enhanced", rpm:"vim-enhanced~6.0~7.25", rls:"RHENT_2.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"vim-minimal", rpm:"vim-minimal~6.0~7.25", rls:"RHENT_2.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
