# OpenVAS Vulnerability Test
# $Id: mdksa_2009_066.nasl 6573 2017-07-06 13:10:50Z cfischer $
# Description: Auto-generated from advisory MDVSA-2009:066 (php)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# or at your option, GNU General Public License version 3,
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
tag_insight = "PHP 4.4.4, 5.1.6, and other versions, when running on Apache, allows
local users to modify behavior of other sites hosted on the same
web server by modifying the mbstring.func_overload setting within
.htaccess, which causes this setting to be applied to other virtual
hosts on the same server (CVE-2009-0754).

The updated packages have been patched to correct these issues.

Affected: 2008.0, 2008.1, 2009.0, Corporate 4.0";
tag_solution = "To upgrade automatically use MandrakeUpdate or urpmi.  The verification
of md5 checksums and GPG signatures is performed automatically for you.

https://secure1.securityspace.com/smysecure/catid.html?in=MDVSA-2009:066";
tag_summary = "The remote host is missing an update to php
announced via advisory MDVSA-2009:066.";

                                                                                

if(description)
{
 script_oid("1.3.6.1.4.1.25623.7.0.63483");
 script_version("$Revision: 6573 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-06 15:10:50 +0200 (Thu, 06 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-03-07 21:47:03 +0100 (Sat, 07 Mar 2009)");
 script_cve_id("CVE-2009-0754");
 script_tag(name:"cvss_base", value:"2.1");
 script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:N/I:P/A:N");
 script_name("Mandrake Security Advisory MDVSA-2009:066 (php)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("Mandrake Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/mandriva_mandrake_linux", "ssh/login/rpms");
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

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"libphp5_common5", rpm:"libphp5_common5~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-bcmath", rpm:"php-bcmath~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-bz2", rpm:"php-bz2~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-calendar", rpm:"php-calendar~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-cgi", rpm:"php-cgi~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-cli", rpm:"php-cli~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ctype", rpm:"php-ctype~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-curl", rpm:"php-curl~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-dba", rpm:"php-dba~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-dbase", rpm:"php-dbase~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-devel", rpm:"php-devel~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-dom", rpm:"php-dom~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-exif", rpm:"php-exif~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-fcgi", rpm:"php-fcgi~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-filter", rpm:"php-filter~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ftp", rpm:"php-ftp~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-gd", rpm:"php-gd~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-gettext", rpm:"php-gettext~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-gmp", rpm:"php-gmp~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-hash", rpm:"php-hash~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-iconv", rpm:"php-iconv~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-imap", rpm:"php-imap~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-json", rpm:"php-json~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ldap", rpm:"php-ldap~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mbstring", rpm:"php-mbstring~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mcrypt", rpm:"php-mcrypt~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mhash", rpm:"php-mhash~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mime_magic", rpm:"php-mime_magic~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ming", rpm:"php-ming~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mssql", rpm:"php-mssql~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mysql", rpm:"php-mysql~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mysqli", rpm:"php-mysqli~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ncurses", rpm:"php-ncurses~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-odbc", rpm:"php-odbc~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-openssl", rpm:"php-openssl~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pcntl", rpm:"php-pcntl~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo", rpm:"php-pdo~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_dblib", rpm:"php-pdo_dblib~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_mysql", rpm:"php-pdo_mysql~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_odbc", rpm:"php-pdo_odbc~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_pgsql", rpm:"php-pdo_pgsql~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_sqlite", rpm:"php-pdo_sqlite~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pgsql", rpm:"php-pgsql~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-posix", rpm:"php-posix~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pspell", rpm:"php-pspell~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-readline", rpm:"php-readline~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-recode", rpm:"php-recode~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-session", rpm:"php-session~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-shmop", rpm:"php-shmop~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-simplexml", rpm:"php-simplexml~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-snmp", rpm:"php-snmp~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-soap", rpm:"php-soap~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sockets", rpm:"php-sockets~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sqlite", rpm:"php-sqlite~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sysvmsg", rpm:"php-sysvmsg~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sysvsem", rpm:"php-sysvsem~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sysvshm", rpm:"php-sysvshm~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-tidy", rpm:"php-tidy~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-tokenizer", rpm:"php-tokenizer~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-wddx", rpm:"php-wddx~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xml", rpm:"php-xml~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xmlreader", rpm:"php-xmlreader~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xmlrpc", rpm:"php-xmlrpc~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xmlwriter", rpm:"php-xmlwriter~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xsl", rpm:"php-xsl~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-zlib", rpm:"php-zlib~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64php5_common5", rpm:"lib64php5_common5~5.2.4~3.5mdv2008.0", rls:"MNDK_2008.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libphp5_common5", rpm:"libphp5_common5~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-bcmath", rpm:"php-bcmath~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-bz2", rpm:"php-bz2~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-calendar", rpm:"php-calendar~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-cgi", rpm:"php-cgi~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-cli", rpm:"php-cli~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ctype", rpm:"php-ctype~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-curl", rpm:"php-curl~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-dba", rpm:"php-dba~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-dbase", rpm:"php-dbase~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-devel", rpm:"php-devel~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-dom", rpm:"php-dom~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-exif", rpm:"php-exif~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-fcgi", rpm:"php-fcgi~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-filter", rpm:"php-filter~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ftp", rpm:"php-ftp~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-gd", rpm:"php-gd~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-gettext", rpm:"php-gettext~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-gmp", rpm:"php-gmp~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-hash", rpm:"php-hash~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-iconv", rpm:"php-iconv~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-imap", rpm:"php-imap~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-json", rpm:"php-json~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ldap", rpm:"php-ldap~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mbstring", rpm:"php-mbstring~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mcrypt", rpm:"php-mcrypt~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mhash", rpm:"php-mhash~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mime_magic", rpm:"php-mime_magic~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ming", rpm:"php-ming~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mssql", rpm:"php-mssql~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mysql", rpm:"php-mysql~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mysqli", rpm:"php-mysqli~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ncurses", rpm:"php-ncurses~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-odbc", rpm:"php-odbc~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-openssl", rpm:"php-openssl~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pcntl", rpm:"php-pcntl~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo", rpm:"php-pdo~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_dblib", rpm:"php-pdo_dblib~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_mysql", rpm:"php-pdo_mysql~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_odbc", rpm:"php-pdo_odbc~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_pgsql", rpm:"php-pdo_pgsql~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_sqlite", rpm:"php-pdo_sqlite~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pgsql", rpm:"php-pgsql~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-posix", rpm:"php-posix~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pspell", rpm:"php-pspell~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-readline", rpm:"php-readline~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-recode", rpm:"php-recode~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-session", rpm:"php-session~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-shmop", rpm:"php-shmop~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-snmp", rpm:"php-snmp~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-soap", rpm:"php-soap~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sockets", rpm:"php-sockets~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sqlite", rpm:"php-sqlite~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sysvmsg", rpm:"php-sysvmsg~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sysvsem", rpm:"php-sysvsem~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sysvshm", rpm:"php-sysvshm~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-tidy", rpm:"php-tidy~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-tokenizer", rpm:"php-tokenizer~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-wddx", rpm:"php-wddx~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xml", rpm:"php-xml~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xmlreader", rpm:"php-xmlreader~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xmlrpc", rpm:"php-xmlrpc~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xmlwriter", rpm:"php-xmlwriter~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xsl", rpm:"php-xsl~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-zlib", rpm:"php-zlib~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64php5_common5", rpm:"lib64php5_common5~5.2.5~14.4mdv2008.1", rls:"MNDK_2008.1")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libphp5_common5", rpm:"libphp5_common5~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-bcmath", rpm:"php-bcmath~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-bz2", rpm:"php-bz2~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-calendar", rpm:"php-calendar~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-cgi", rpm:"php-cgi~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-cli", rpm:"php-cli~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ctype", rpm:"php-ctype~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-curl", rpm:"php-curl~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-dba", rpm:"php-dba~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-dbase", rpm:"php-dbase~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-devel", rpm:"php-devel~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-dom", rpm:"php-dom~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-exif", rpm:"php-exif~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-fcgi", rpm:"php-fcgi~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-filter", rpm:"php-filter~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ftp", rpm:"php-ftp~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-gd", rpm:"php-gd~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-gettext", rpm:"php-gettext~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-gmp", rpm:"php-gmp~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-hash", rpm:"php-hash~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-iconv", rpm:"php-iconv~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-imap", rpm:"php-imap~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-json", rpm:"php-json~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ldap", rpm:"php-ldap~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mbstring", rpm:"php-mbstring~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mcrypt", rpm:"php-mcrypt~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mhash", rpm:"php-mhash~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mime_magic", rpm:"php-mime_magic~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ming", rpm:"php-ming~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mssql", rpm:"php-mssql~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mysql", rpm:"php-mysql~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mysqli", rpm:"php-mysqli~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-ncurses", rpm:"php-ncurses~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-odbc", rpm:"php-odbc~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-openssl", rpm:"php-openssl~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pcntl", rpm:"php-pcntl~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo", rpm:"php-pdo~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_dblib", rpm:"php-pdo_dblib~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_mysql", rpm:"php-pdo_mysql~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_odbc", rpm:"php-pdo_odbc~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_pgsql", rpm:"php-pdo_pgsql~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pdo_sqlite", rpm:"php-pdo_sqlite~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pgsql", rpm:"php-pgsql~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-posix", rpm:"php-posix~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-pspell", rpm:"php-pspell~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-readline", rpm:"php-readline~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-recode", rpm:"php-recode~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-session", rpm:"php-session~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-shmop", rpm:"php-shmop~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-snmp", rpm:"php-snmp~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-soap", rpm:"php-soap~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sockets", rpm:"php-sockets~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sqlite", rpm:"php-sqlite~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sybase", rpm:"php-sybase~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sysvmsg", rpm:"php-sysvmsg~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sysvsem", rpm:"php-sysvsem~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-sysvshm", rpm:"php-sysvshm~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-tidy", rpm:"php-tidy~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-tokenizer", rpm:"php-tokenizer~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-wddx", rpm:"php-wddx~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xml", rpm:"php-xml~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xmlreader", rpm:"php-xmlreader~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xmlrpc", rpm:"php-xmlrpc~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xmlwriter", rpm:"php-xmlwriter~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-xsl", rpm:"php-xsl~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-zlib", rpm:"php-zlib~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64php5_common5", rpm:"lib64php5_common5~5.2.6~18.3mdv2009.0", rls:"MNDK_2009.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"libphp5_common5", rpm:"libphp5_common5~5.1.6~1.12.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-cgi", rpm:"php-cgi~5.1.6~1.12.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-cli", rpm:"php-cli~5.1.6~1.12.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-devel", rpm:"php-devel~5.1.6~1.12.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-fcgi", rpm:"php-fcgi~5.1.6~1.12.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"php-mbstring", rpm:"php-mbstring~5.1.6~1.3.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"lib64php5_common5", rpm:"lib64php5_common5~5.1.6~1.12.20060mlcs4", rls:"MNDK_4.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
