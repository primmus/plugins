###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ms_kb2596760.nasl 13111 2019-01-17 07:49:10Z mmartin $
#
# Microsoft Excel Viewer 2007 Service Pack 3 Remote Code Execution Vulnerability (KB2596760)
#
# Authors:
# Antu Sanadi <santu@secpod.com>
#
# Copyright:
# Copyright (C) 2019 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.814598");
  script_version("$Revision: 13111 $");
  script_cve_id("CVE-2019-0541");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2019-01-17 08:49:10 +0100 (Thu, 17 Jan 2019) $");
  script_tag(name:"creation_date", value:"2019-01-09 15:37:10 +0530 (Wed, 09 Jan 2019)");
  script_name("Microsoft Excel Viewer 2007 Service Pack 3 Remote Code Execution Vulnerability (KB2596760)");

  script_tag(name:"summary", value:"This host is missing an important security
  update according to Microsoft KB2596760");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The flaw exists in the way that
  the MSHTML engine improperly validates input.");

  script_tag(name:"impact", value:"Successful exploitation will allow an
  attacker could execute arbitrary code in the context of the current user.");

  script_tag(name:"affected", value:"Microsoft Excel Viewer 2007 Service Pack 3");

  script_tag(name:"solution", value:"Run Windows Update and update the
  listed hotfixes or download and update mentioned hotfixes in the advisory
  from the Reference link.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"executable_version");
  script_xref(name:"URL", value:"https://support.microsoft.com/en-us/help/2596760");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("secpod_office_products_version_900032.nasl");
  script_mandatory_keys("SMB/Office/XLView/Version");
  script_require_ports(139, 445);
  exit(0);
}

include("smb_nt.inc");
include("host_details.inc");
include("version_func.inc");
include("secpod_smb_func.inc");

exeVer = get_kb_item("SMB/Office/XLView/Version");
if(!exeVer){
  exit(0);
}

if(!os_arch = get_kb_item("SMB/Windows/Arch")){
  exit(0);
}

if("x86" >< os_arch){
  key_list = make_list("SOFTWARE\Microsoft\Windows\CurrentVersion");
}
else if("x64" >< os_arch){
  key_list =  make_list("SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion",
                        "SOFTWARE\Microsoft\Windows\CurrentVersion");
}

foreach key(key_list)
{
  path = registry_get_sz(key:key, item:"ProgramFilesDir");

  if(!path){
    exit(0);
  }

  offPath = path + "\Microsoft Office\Office12";
  offexeVer = fetch_file_version(sysPath:offPath, file_name:"msohev.dll");
  if(!offexeVer){
    continue;
  }
  if(offexeVer =~ "^12\." && version_is_less(version:offexeVer, test_version:"12.0.6806.5000"))
  {
    report = report_fixed_ver( file_checked:offPath + "\msohev.dll",
                               file_version:offexeVer, vulnerable_range:"12.0 - 12.0.6802.4999");
    security_message(data:report);
    exit(0);
  }
}
exit(99);

