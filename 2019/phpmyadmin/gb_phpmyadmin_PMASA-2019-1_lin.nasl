###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_phpmyadmin_PMASA-2019-1_lin.nasl 13374 2019-01-31 07:19:48Z asteins $
#
# phpMyAdmin 4.0 <= 4.8.4 Arbitrary File Read Vulnerability - PMASA-2019-1 (Linux)
#
# Authors:
# Adrian Steins <adrian.steins@greenbone.net>
#
# Copyright:
# Copyright (C) 2019 Greenbone Networks GmbH, https://www.greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (C) of their respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
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
  script_oid("1.3.6.1.4.1.25623.1.0.112500");
  script_version("$Revision: 13374 $");
  script_tag(name:"last_modification", value:"$Date: 2019-01-31 08:19:48 +0100 (Thu, 31 Jan 2019) $");
  script_tag(name:"creation_date", value:"2019-01-28 14:49:12 +0100 (Mon, 28 Jan 2019)");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:N/A:N");

  script_cve_id("CVE-2019-6799");

  script_name("phpMyAdmin 4.0 <= 4.8.4 Arbitrary File Read Vulnerability - PMASA-2019-1 (Linux)");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("secpod_phpmyadmin_detect_900129.nasl", "os_detection.nasl");
  script_mandatory_keys("phpMyAdmin/installed", "Host/runs_unixoide");

  script_tag(name:"summary", value:"phpMyAdmin is prone to an arbitrary file read vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"When AllowArbitraryServer configuration set to true, with the use of
  a rogue MySQL server, an attacker can read any file on the server that the web server's user can access.

  phpMyadmin attempts to block the use of LOAD DATA INFILE, but due to a bug in PHP, this check is not honored.
  Additionally, when using the 'mysql' extension, mysql.allow_local_infile is enabled by default.
  Both of these conditions allow the attack to occur.");

  script_tag(name:"affected", value:"phpMyAdmin versions 4.0 through 4.8.4.");

  script_tag(name:"solution", value:"Update to version 4.8.5.");

  script_tag(name:"qod_type", value:"remote_banner_unreliable");
  script_tag(name:"solution_type", value:"VendorFix");

  script_xref(name:"URL", value:"https://www.phpmyadmin.net/security/PMASA-2019-1/");

  exit(0);
}

CPE = "cpe:/a:phpmyadmin:phpmyadmin";

include("host_details.inc");
include("version_func.inc");

if( ! port = get_app_port( cpe:CPE ) )
  exit( 0 );

if( ! infos = get_app_version_and_location( cpe:CPE, port:port, exit_no_version:TRUE ) )
  exit( 0 );

vers = infos["version"];
path = infos["location"];

if( version_in_range( version:vers, test_version:"4.0", test_version2:"4.8.4" ) ) {
  report = report_fixed_ver( installed_version:vers, fixed_version:"4.8.5", install_path:path );
  security_message( data:report, port:port );
  exit( 0 );
}

exit( 99 );
