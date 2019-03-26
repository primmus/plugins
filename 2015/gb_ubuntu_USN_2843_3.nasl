###############################################################################
# OpenVAS Vulnerability Test
#
# Ubuntu Update for linux-raspi2 USN-2843-3
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2015 Greenbone Networks GmbH, http://www.greenbone.net
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

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.842573");
  script_version("$Revision: 14140 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-13 13:26:09 +0100 (Wed, 13 Mar 2019) $");
  script_tag(name:"creation_date", value:"2015-12-18 05:44:51 +0100 (Fri, 18 Dec 2015)");
  script_cve_id("CVE-2015-7799", "CVE-2015-7872", "CVE-2015-7884", "CVE-2015-7885");
  script_tag(name:"cvss_base", value:"4.9");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:N/I:N/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("Ubuntu Update for linux-raspi2 USN-2843-3");
  script_tag(name:"summary", value:"The remote host is missing an update for the 'linux-raspi2'
  package(s) announced via the referenced advisory.");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"&#37101 &#27704 &#21018  discovered that
the ppp implementation in the Linux kernel did not ensure that certain slot
numbers are valid. A local attacker with the privilege to call ioctl() on
/dev/ppp could cause a denial of service (system crash). (CVE-2015-7799)

Dmitry Vyukov discovered that the Linux kernel's keyring handler attempted
to garbage collect incompletely instantiated keys. A local unprivileged
attacker could use this to cause a denial of service (system crash).
(CVE-2015-7872)

It was discovered that the virtual video osd test driver in the Linux
kernel did not properly initialize data structures. A local attacker could
use this to obtain sensitive information from the kernel. (CVE-2015-7884)

It was discovered that the driver for Digi Neo and ClassicBoard devices did
not properly initialize data structures. A local attacker could use this to
obtain sensitive information from the kernel. (CVE-2015-7885)");
  script_tag(name:"affected", value:"linux-raspi2 on Ubuntu 15.10");
  script_tag(name:"solution", value:"Please Install the Updated Packages.");
  script_xref(name:"USN", value:"2843-3");
  script_xref(name:"URL", value:"http://www.ubuntu.com/usn/usn-2843-3/");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=UBUNTU15\.10");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();
if(!release)
  exit(0);

res = "";

if(release == "UBUNTU15.10")
{

  if ((res = isdpkgvuln(pkg:"linux-image-4.2.0-1016-raspi2", ver:"4.2.0-1016.23", rls:"UBUNTU15.10")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
