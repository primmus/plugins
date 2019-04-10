###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for kdebase-workspace FEDORA-2010-6096
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
tag_insight = "The KDE Workspace consists of what is the desktop of the
  KDE Desktop Environment.

  This package contains:
  * khotkeys (a hotkey daemon)
  * klipper (a cut &amp; paste history utility)
  * kmenuedit (the menu editor)
  * krandrtray (resize and rotate X screens)
  * krunner (a command run interface)
  * ksysguard (a performance monitor)
  * kwin (the window manager of KDE)
  * kxkb (a utility to switch keyboard maps)
  * plasma (the KDE desktop, panels and widgets workspace application)
  * systemsettings (the configuration editor)";
tag_solution = "Please Install the Updated Packages.";

tag_affected = "kdebase-workspace on Fedora 12";


if(description)
{
  script_xref(name : "URL" , value : "http://lists.fedoraproject.org/pipermail/package-announce/2010-April/039476.html");
  script_oid("1.3.6.1.4.1.25623.1.0.861873");
  script_version("$Revision: 8440 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-17 08:58:46 +0100 (Wed, 17 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-04-19 16:47:49 +0200 (Mon, 19 Apr 2010)");
  script_tag(name:"cvss_base", value:"6.9");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:C/I:C/A:C");
  script_xref(name: "FEDORA", value: "2010-6096");
  script_cve_id("CVE-2010-0436");
  script_name("Fedora Update for kdebase-workspace FEDORA-2010-6096");

  script_tag(name: "summary" , value: "Check for the Version of kdebase-workspace");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "solution" , value : tag_solution);
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

if(release == "FC12")
{

  if ((res = isrpmvuln(pkg:"kdebase-workspace", rpm:"kdebase-workspace~4.4.2~5.fc12", rls:"FC12")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
