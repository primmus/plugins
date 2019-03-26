##############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_adobe_acrobat_2017_apsb18-29_win.nasl 12120 2018-10-26 11:13:20Z mmartin $
#
# Adobe Acrobat 2017 Multiple Arbitrary Code Execution Vulnerabilities-apsb18-29 (Windows)
#
# Authors:
# Rinu Kuriakose <krinu@secpod.com>
#
# Copyright:
# Copyright (C) 2018 Greenbone Networks GmbH, http://www.greenbone.net
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

CPE = "cpe:/a:adobe:acrobat";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.813848");
  script_version("$Revision: 12120 $");
  script_cve_id("CVE-2018-12808", "CVE-2018-12799");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"last_modification", value:"$Date: 2018-10-26 13:13:20 +0200 (Fri, 26 Oct 2018) $");
  script_tag(name:"creation_date", value:"2018-08-16 11:03:52 +0530 (Thu, 16 Aug 2018)");
  script_name("Adobe Acrobat 2017 Multiple Arbitrary Code Execution Vulnerabilities-apsb18-29 (Windows)");

  script_tag(name:"summary", value:"This host is installed with Adobe Acrobat 2017
  and is prone to multiple arbitrary code execution vulnerabilities.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present
  on the target host.");

  script_tag(name:"insight", value:"Multiple flaws exist due to,

  - An untrusted pointer dereference error.

  - An out-of-bounds write error.");

  script_tag(name:"impact", value:"Successful exploitation will allow an
  attacker to conduct arbitrary code execution in the context of the current
  user.");

  script_tag(name:"affected", value:"Adobe Acrobat 2017.011.30096 and earlier
  versions on Windows.");

  script_tag(name:"solution", value:"Upgrade to Adobe Acrobat 2017 version
  2017.011.30099 or later. For updates refer to Reference links.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"registry");
  script_xref(name:"URL", value:"https://helpx.adobe.com/security/products/acrobat/apsb18-29.html");
  script_xref(name:"URL", value:"https://helpx.adobe.com");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("General");
  script_dependencies("secpod_adobe_prdts_detect_win.nasl");
  script_mandatory_keys("Adobe/Acrobat/Win/Ver");
  exit(0);
}

include("host_details.inc");
include("version_func.inc");

infos = get_app_version_and_location( cpe:CPE, exit_no_version:TRUE );
vers = infos['version'];
path = infos['location'];

##2017.011.30096 == 17.011.30096
if(version_in_range(version:vers, test_version:"17.0", test_version2:"17.011.30096"))
{
  report =  report_fixed_ver(installed_version:vers, fixed_version:"2017.011.30099", install_path:path);
  security_message(data:report);
  exit(0);
}
