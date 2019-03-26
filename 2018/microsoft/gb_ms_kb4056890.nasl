###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_ms_kb4056890.nasl 12410 2018-11-19 10:06:05Z cfischer $
#
# Microsoft Windows Multiple Vulnerabilities (KB4056890)
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

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.812294");
  script_version("$Revision: 12410 $");
  script_cve_id("CVE-2018-0744", "CVE-2018-0746", "CVE-2018-0747", "CVE-2018-0748",
                "CVE-2018-0749", "CVE-2018-0751", "CVE-2018-0752", "CVE-2018-0753",
                "CVE-2018-0754", "CVE-2018-0758", "CVE-2018-0762", "CVE-2018-0766",
                "CVE-2018-0767", "CVE-2018-0769", "CVE-2018-0770", "CVE-2018-0772",
                "CVE-2018-0776", "CVE-2018-0777", "CVE-2018-0780", "CVE-2018-0803",
                "CVE-2018-0781", "CVE-2017-5753", "CVE-2017-5715", "CVE-2017-5754",
                "CVE-2018-0764", "CVE-2018-0786");
  script_tag(name:"cvss_base", value:"7.6");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:H/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2018-11-19 11:06:05 +0100 (Mon, 19 Nov 2018) $");
  script_tag(name:"creation_date", value:"2018-01-04 17:36:12 +0530 (Thu, 04 Jan 2018)");
  script_name("Microsoft Windows Multiple Vulnerabilities (KB4056890)");

  script_tag(name:"summary", value:"This host is missing a critical security
  update according to Microsoft KB4056890");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"Multiple flaws exists due to,

  - Microsoft Edge does not properly enforce cross-domain policies.

  - The scripting engine handles objects in memory in Microsoft Edge.

  - Windows Adobe Type Manager Font Driver (ATMFD.dll) fails to properly
    handle objects in memory.

  - Microsoft Edge PDF Reader improperly handles objects in memory.

  - Windows kernel fails to properly handle objects in memory.

  - An error in the way that the Windows Kernel API enforces permissions.

  - An error in the Microsoft Server Message Block (SMB) Server when an attacker
    with valid credentials attempts to open a specially crafted file over the SMB
    protocol on the same machine.

  - An error in the Windows kernel.

  - Multiple errors leading to 'speculative execution side-channel attacks' that
    affect many modern processors and operating systems including Intel, AMD, and ARM.

  - .NET, and .NET core, improperly process XML documents.

  - .NET Framework (and .NET Core) components do not completely validate certificates.");

  script_tag(name:"impact", value:"Successful exploitation will allow an attacker
  to elevate privileges, execute arbitrary code in the context of the current
  user, potentially read data that was not intended to be disclosed, impersonate
  processes, interject cross-process communication, or interrupt system
  functionality, bypass certain security checks in the operating system and can
  cause a target system to stop responding and can be used to read the content of
  memory across a trusted boundary and can therefore lead to information disclosure
  and some unspecified impacts too.");

  script_tag(name:"affected", value:"Microsoft Windows Server 2016

  Microsoft Windows 10 Version 1607 x32/x64.");

  script_tag(name:"solution", value:"Run Windows Update and update the
  listed hotfixes or download and update mentioned hotfixes in the advisory");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"executable_version");
  script_xref(name:"URL", value:"https://support.microsoft.com/en-us/help/4056890");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("smb_reg_service_pack.nasl");
  script_require_ports(139, 445);
  script_mandatory_keys("SMB/WindowsVersion");

  exit(0);
}

include("smb_nt.inc");
include("secpod_reg.inc");
include("version_func.inc");
include("secpod_smb_func.inc");

if(hotfix_check_sp(win2016:1, win10:1, win10x64:1) <= 0){
  exit(0);
}

sysPath = smb_get_system32root();
if(!sysPath ){
  exit(0);
}

edgeVer = fetch_file_version(sysPath:sysPath, file_name:"edgehtml.dll");
if(!edgeVer){
  exit(0);
}

if(version_in_range(version:edgeVer, test_version:"11.0.14393.0", test_version2:"11.0.14393.2006"))
{
  report = 'File checked:     ' + sysPath + "\Edgehtml.dll" + '\n' +
           'File version:     ' + edgeVer  + '\n' +
           'Vulnerable range: 11.0.14393.0 - 11.0.14393.2006\n' ;
  security_message(data:report);
  exit(0);
}
exit(0);
