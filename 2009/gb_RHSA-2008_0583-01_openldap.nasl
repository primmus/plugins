###############################################################################
# OpenVAS Vulnerability Test
#
# RedHat Update for openldap RHSA-2008:0583-01
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
tag_insight = "OpenLDAP is an open source suite of Lightweight Directory Access Protocol
  (LDAP) applications and development tools. LDAP is a set of protocols for
  accessing directory services.

  A denial of service flaw was found in the way the OpenLDAP slapd daemon
  processed certain network messages. An unauthenticated remote attacker
  could send a specially crafted request that would crash the slapd daemon.
  (CVE-2008-2952)
  
  Users of openldap should upgrade to these updated packages, which contain a
  backported patch to correct this issue.";

tag_affected = "openldap on Red Hat Enterprise Linux AS version 4,
  Red Hat Enterprise Linux ES version 4,
  Red Hat Enterprise Linux WS version 4,
  Red Hat Enterprise Linux (v. 5 server)";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "https://www.redhat.com/archives/rhsa-announce/2008-July/msg00009.html");
  script_oid("1.3.6.1.4.1.25623.7.0.870172");
  script_version("$Revision: 6683 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-12 11:41:57 +0200 (Wed, 12 Jul 2017) $");
  script_tag(name:"creation_date", value:"2009-03-06 07:30:35 +0100 (Fri, 06 Mar 2009)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_xref(name: "RHSA", value: "2008:0583-01");
  script_cve_id("CVE-2008-2952");
  script_name( "RedHat Update for openldap RHSA-2008:0583-01");

  script_tag(name:"summary", value:"Check for the Version of openldap");
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

if(release == "RHENT_5")
{

  if ((res = isrpmvuln(pkg:"compat-openldap", rpm:"compat-openldap~2.3.27_2.2.29~8.el5_2.4", rls:"RHENT_5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap", rpm:"openldap~2.3.27~8.el5_2.4", rls:"RHENT_5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-clients", rpm:"openldap-clients~2.3.27~8.el5_2.4", rls:"RHENT_5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-debuginfo", rpm:"openldap-debuginfo~2.3.27~8.el5_2.4", rls:"RHENT_5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-devel", rpm:"openldap-devel~2.3.27~8.el5_2.4", rls:"RHENT_5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-servers", rpm:"openldap-servers~2.3.27~8.el5_2.4", rls:"RHENT_5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-servers-sql", rpm:"openldap-servers-sql~2.3.27~8.el5_2.4", rls:"RHENT_5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}


if(release == "RHENT_4")
{

  if ((res = isrpmvuln(pkg:"compat-openldap", rpm:"compat-openldap~2.1.30~8.el4_6.5", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap", rpm:"openldap~2.2.13~8.el4_6.5", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-clients", rpm:"openldap-clients~2.2.13~8.el4_6.5", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-debuginfo", rpm:"openldap-debuginfo~2.2.13~8.el4_6.5", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-devel", rpm:"openldap-devel~2.2.13~8.el4_6.5", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-servers", rpm:"openldap-servers~2.2.13~8.el4_6.5", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"openldap-servers-sql", rpm:"openldap-servers-sql~2.2.13~8.el4_6.5", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
