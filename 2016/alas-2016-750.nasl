###############################################################################
# OpenVAS Vulnerability Test
# $Id: alas-2016-750.nasl 11703 2018-10-01 08:05:31Z cfischer $
#
# Amazon Linux security check
#
# Authors:
# Autogenerated by alas-generator developed by Eero Volotinen <eero.volotinen@iki.fi>
#
# Copyright:
# Copyright (c) 2016 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.120739");
  script_version("$Revision: 11703 $");
  script_tag(name:"creation_date", value:"2016-10-26 15:38:26 +0300 (Wed, 26 Oct 2016)");
  script_tag(name:"last_modification", value:"$Date: 2018-10-01 10:05:31 +0200 (Mon, 01 Oct 2018) $");
  script_name("Amazon Linux Local Check: alas-2016-750");
  script_tag(name:"insight", value:"Ciphers with 64-bit block sizes used in CBC mode were found to be vulnerable to a birthday attack when key renegotiation doesn't happen frequently or at all in long running connections. The blowfish cipher as used in OpenVPN by default is vulnerable to this attack, allowing a remote attacker to recover partial plaintext information (XOR of two plaintext blocks).");
  script_tag(name:"solution", value:"Run yum update openvpn to update your system.");
  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name:"URL", value:"https://alas.aws.amazon.com/ALAS-2016-750.html");
  script_cve_id("CVE-2016-6329");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_tag(name:"qod_type", value:"package");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/amazon_linux", "ssh/login/release");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"summary", value:"Amazon Linux Local Security Checks");
  script_copyright("This script is Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Amazon Linux Local Security Checks");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "AMAZON")
{
  if ((res = isrpmvuln(pkg:"openvpn-debuginfo", rpm:"openvpn-debuginfo~2.3.12~1.16.amzn1", rls:"AMAZON")) != NULL) {
    security_message(data:res);
    exit(0);
  }
  if ((res = isrpmvuln(pkg:"openvpn", rpm:"openvpn~2.3.12~1.16.amzn1", rls:"AMAZON")) != NULL) {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
    exit(0);
}
