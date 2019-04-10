###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for xorg-x11-server FEDORA-2007-425
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
tag_insight = "X.Org X11 X server

  ---------------------------------------------------------------------
  
  * Sun Apr  8 2007 Adam Jackson &lt;ajax redhat com&gt; 1.1.1-47.8
  - xserver-cve-2007-1003.patch: Fix CVE 2007-1003 in XC-MISC extension";

tag_affected = "xorg-x11-server on Fedora Core 6";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "https://www.redhat.com/archives/fedora-package-announce/2007-April/msg00028.html");
  script_oid("1.3.6.1.4.1.25623.7.0.861330");
  script_version("$Revision: 6622 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-10 07:52:50 +0200 (Mon, 10 Jul 2017) $");
  script_tag(name:"creation_date", value:"2009-02-27 16:27:46 +0100 (Fri, 27 Feb 2009)");
  script_tag(name:"cvss_base", value:"9.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:C/I:C/A:C");
  script_cve_id("CVE-2007-1003");
  script_xref(name: "FEDORA", value: "2007-425");
  script_name( "Fedora Update for xorg-x11-server FEDORA-2007-425");

  script_tag(name:"summary", value:"Check for the Version of xorg-x11-server");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2009 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora_core", "ssh/login/rpms");
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

if(release == "FC6")
{

  if ((res = isrpmvuln(pkg:"xorg-x11-server", rpm:"xorg-x11-server~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"x86_64/xorg-x11-server-Xvfb", rpm:"x86_64/xorg-x11-server-Xvfb~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"x86_64/xorg-x11-server-sdk", rpm:"x86_64/xorg-x11-server-sdk~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"x86_64/debug/xorg-x11-server-debuginfo", rpm:"x86_64/debug/xorg-x11-server-debuginfo~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"x86_64/xorg-x11-server-Xephyr", rpm:"x86_64/xorg-x11-server-Xephyr~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"x86_64/xorg-x11-server-Xorg", rpm:"x86_64/xorg-x11-server-Xorg~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"x86_64/xorg-x11-server-Xnest", rpm:"x86_64/xorg-x11-server-Xnest~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"x86_64/xorg-x11-server-Xdmx", rpm:"x86_64/xorg-x11-server-Xdmx~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"i386/xorg-x11-server-Xnest", rpm:"i386/xorg-x11-server-Xnest~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"i386/xorg-x11-server-Xdmx", rpm:"i386/xorg-x11-server-Xdmx~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"i386/debug/xorg-x11-server-debuginfo", rpm:"i386/debug/xorg-x11-server-debuginfo~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"i386/xorg-x11-server-sdk", rpm:"i386/xorg-x11-server-sdk~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"i386/xorg-x11-server-Xorg", rpm:"i386/xorg-x11-server-Xorg~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"i386/xorg-x11-server-Xvfb", rpm:"i386/xorg-x11-server-Xvfb~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"i386/xorg-x11-server-Xephyr", rpm:"i386/xorg-x11-server-Xephyr~1.1.1~47.8.fc6", rls:"FC6")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
