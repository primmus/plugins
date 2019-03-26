###############################################################################
# OpenVAS Vulnerability Test
# $Id: secpod_ms12-027.nasl 12485 2018-11-22 11:39:45Z cfischer $
#
# Microsoft Windows Common Controls Remote Code Execution Vulnerability (2664258)
#
# Authors:
# Sooraj KS <kssooraj@secpod.com>
#
# Copyright:
# Copyright (c) 2012 SecPod, http://www.secpod.com
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
  script_oid("1.3.6.1.4.1.25623.1.0.902829");
  script_version("$Revision: 12485 $");
  script_bugtraq_id(52911);
  script_cve_id("CVE-2012-0158");
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2018-11-22 12:39:45 +0100 (Thu, 22 Nov 2018) $");
  script_tag(name:"creation_date", value:"2012-04-11 11:11:11 +0530 (Wed, 11 Apr 2012)");
  script_name("Microsoft Windows Common Controls Remote Code Execution Vulnerability (2664258)");
  script_xref(name:"URL", value:"http://secunia.com/advisories/48786");
  script_xref(name:"URL", value:"http://www.securitytracker.com/id/1026904");
  script_xref(name:"URL", value:"http://technet.microsoft.com/en-us/security/bulletin/ms12-027");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2012 SecPod");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("secpod_office_products_version_900032.nasl");
  script_mandatory_keys("SMB/WindowsVersion");
  script_require_ports(139, 445);

  script_tag(name:"impact", value:"Successful exploitation could allow an attacker to execute arbitrary code
  within the context of the application.");

  script_tag(name:"affected", value:"Microsoft SQL Server 2008
  Microsoft Visual Basic 6.0

  Microsoft Commerce Server 2009

  Microsoft SQL Server 2005 Service Pack 4

  Microsoft SQL Server 2000 Service Pack 4

  Microsoft Visual FoxPro 9.0 Service Pack 2

  Microsoft Visual FoxPro 8.0 Service Pack 1

  Microsoft Commerce Server 2007 Service Pack 2

  Microsoft Commerce Server 2002 Service Pack 4

  Microsoft Office 2010 Service Pack 1 and prior

  Microsoft Office 2007 Service Pack 3 and prior

  Microsoft Office 2003 Service Pack 3 and prior

  Microsoft SQL Server 2000 Analysis Services Service Pack 4");

  script_tag(name:"insight", value:"The flaw is due to an error within the ListView, ListView2, TreeView
  and TreeView2 ActiveX controls in MSCOMCTL.OCX in the Common Controls and can
  be exploited to corrupt memory.");

  script_tag(name:"solution", value:"Run Windows Update and install the listed hotfixes or download and
  install the hotfixes from the referenced advisory.");

  script_tag(name:"summary", value:"This host is missing a critical security update according to
  Microsoft Bulletin MS12-027.");

  script_tag(name:"qod_type", value:"registry");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("smb_nt.inc");
include("secpod_reg.inc");
include("version_func.inc");
include("secpod_smb_func.inc");

sysPath = smb_get_systemroot();
if(!sysPath){
  exit(0);
}

sysVer = fetch_file_version(sysPath:sysPath, file_name:"system32\Mscomctl.Ocx");
if(!sysVer){
  exit(0);
}

officeVer = get_kb_item("MS/Office/Ver");

if(officeVer && officeVer =~ "^1[124]\.")
{
  if(version_is_less(version:sysVer, test_version:"6.1.98.33"))
  {
    security_message( port: 0, data: "The target host was found to be vulnerable" );
    exit(0);
  }
}

key = "SOFTWARE\Microsoft\BizTalk Server\1.0";
if(registry_key_exists(key:key))
{
  bizName = registry_get_sz(key:key, item:"ProductName");
  if("Microsoft BizTalk Server 2002" >< bizName)
  {
    if(version_is_less(version:sysVer, test_version:"6.1.98.33"))
    {
      security_message( port: 0, data: "The target host was found to be vulnerable" );
      exit(0);
    }
  }
}

foreach ver (make_list("2005", "10"))
{
  key = "SOFTWARE\Microsoft\Windows\CurrentVersion" +
        "\Uninstall\Microsoft SQL Server " + ver;
  if(registry_key_exists(key:key))
  {
    if(version_is_less(version:sysVer, test_version:"6.1.98.33"))
    {
      security_message( port: 0, data: "The target host was found to be vulnerable" );
      exit(0);
    }
  }
}

keys = make_list("SOFTWARE\Microsoft\Commerce Server",
                 "SOFTWARE\Microsoft\Commerce Server 2007",
                 "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"+
                 "\Microsoft Commerce Server 2009");
foreach key (keys)
{
  if(registry_key_exists(key:key))
  {
    if(version_is_less(version:sysVer, test_version:"6.1.98.33"))
    {
      security_message( port: 0, data: "The target host was found to be vulnerable" );
      exit(0);
    }
  }
}

key = "SOFTWARE\Microsoft\Visual Basic\6.0";
if(registry_key_exists(key:key))
{
  if(version_is_less(version:sysVer, test_version:"6.1.98.33"))
  {
    security_message( port: 0, data: "The target host was found to be vulnerable" );
    exit(0);
  }
}

foreach ver (make_list("8.0", "9.0"))
{
  key = "SOFTWARE\Microsoft\VisualFoxPro\" + ver;
  if(registry_key_exists(key:key))
  {
    if(version_is_less(version:sysVer, test_version:"6.1.98.33"))
    {
      security_message( port: 0, data: "The target host was found to be vulnerable" );
      exit(0);
    }
  }
}

key = "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft SQL " +
      "Server 2000 Analysis Services";
if(registry_key_exists(key:key))
{
  path = registry_get_sz(key:key, item:"InstallLocation");
  dllVer = fetch_file_version(sysPath:path, file_name:"bin\msmdctr80.dll");
  if(dllVer)
  {
    if(version_is_less(version:dllVer, test_version:"8.0.2302.0"))
    {
      security_message( port: 0, data: "The target host was found to be vulnerable" );
      exit(0);
    }
  }
}

key = "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft SQL " +
      "Server 2000";
if(registry_key_exists(key:key))
{
  path = registry_get_sz(key:key, item:"InstallLocation");
  exeVer = fetch_file_version(sysPath:path, file_name:"Binn\sqlservr.exe");
  if(exeVer)
  {
    if(version_is_less(version:exeVer, test_version:"2000.80.2065.0") ||
       version_in_range(version:exeVer, test_version:"2000.80.2300.0", test_version2:"2000.80.2300.9"))
    {
      security_message( port: 0, data: "The target host was found to be vulnerable" );
      exit(0);
    }
  }
}
