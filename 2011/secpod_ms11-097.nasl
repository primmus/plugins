###############################################################################
# OpenVAS Vulnerability Test
# $Id: secpod_ms11-097.nasl 11997 2018-10-20 11:59:41Z mmartin $
#
# Windows Client/Server Run-time Subsystem Privilege Elevation Vulnerability (2620712)
#
# Authors:
# Rachana Shetty <srachana@secpod.com>
#
# Copyright:
# Copyright (c) 2011 SecPod, http://www.secpod.com
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
  script_oid("1.3.6.1.4.1.25623.1.0.902643");
  script_version("$Revision: 11997 $");
  script_cve_id("CVE-2011-3408");
  script_bugtraq_id(50972);
  script_tag(name:"cvss_base", value:"7.2");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"$Date: 2018-10-20 13:59:41 +0200 (Sat, 20 Oct 2018) $");
  script_tag(name:"creation_date", value:"2011-12-14 11:05:00 +0530 (Wed, 14 Dec 2011)");
  script_name("Windows Client/Server Run-time Subsystem Privilege Elevation Vulnerability (2620712)");
  script_xref(name:"URL", value:"http://secunia.com/advisories/47210");
  script_xref(name:"URL", value:"http://support.microsoft.com/kb/2620712");
  script_xref(name:"URL", value:"http://technet.microsoft.com/en-us/security/bulletin/ms11-097");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2011 SecPod");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("secpod_reg_enum.nasl");
  script_require_ports(139, 445);
  script_mandatory_keys("SMB/registry_enumerated");

  script_tag(name:"impact", value:"Successful exploitation could allow local attackers to obtain sensitive
  information or gain privileges when runnin with administrator privileges.");
  script_tag(name:"affected", value:"Microsoft Windows 7 Service Pack 1 and prior
  Microsoft Windows XP Service Pack 3 and prior
  Microsoft Windows 2K3 Service Pack 2 and prior
  Microsoft Windows Vista Service Pack 2 and prior
  Microsoft Windows Server 2008 Service Pack 2 and prior");
  script_tag(name:"insight", value:"The flaw is caused by an error in the Client/Server Run-time Subsystem(CSRSS)
  when evaluating inter-process device event message permissions, which could
  allow a low integrity process to send message to a higher integrity process.");
  script_tag(name:"solution", value:"Run Windows Update and update the listed hotfixes or download and
  update mentioned hotfixes in the advisory");
  script_tag(name:"summary", value:"This host is missing an important security update according to
  Microsoft Bulletin MS11-097.");
  script_tag(name:"qod_type", value:"registry");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("smb_nt.inc");
include("secpod_reg.inc");
include("version_func.inc");
include("secpod_smb_func.inc");

if(hotfix_check_sp(xp:4, win2003:3, winVista:3, win7:2, win2008:3) <= 0){
  exit(0);
}

## MS11-097 Hotfix (2620712)
if(hotfix_missing(name:"2620712") == 0){
  exit(0);
}

sysPath = smb_get_systemroot();
if(!sysPath ){
  exit(0);
}

dllVer = fetch_file_version(sysPath:sysPath, file_name:"system32\Csrsrv.dll");
if(!dllVer){
  exit(0);
}

if(hotfix_check_sp(xp:4) > 0)
{
  SP = get_kb_item("SMB/WinXP/ServicePack");
  if("Service Pack 3" >< SP)
  {
    if(version_is_less(version:dllVer, test_version:"5.1.2600.6166")){
      security_message( port: 0, data: "The target host was found to be vulnerable" );
    }
    exit(0);
  }
  security_message( port: 0, data: "The target host was found to be vulnerable" );
}

else if(hotfix_check_sp(win2003:3) > 0)
{
  SP = get_kb_item("SMB/Win2003/ServicePack");
  if("Service Pack 2" >< SP)
  {
    if(version_is_less(version:dllVer, test_version:"5.2.3790.4922")){
      security_message( port: 0, data: "The target host was found to be vulnerable" );
    }
    exit(0);
  }
  security_message( port: 0, data: "The target host was found to be vulnerable" );
}

else if(hotfix_check_sp(winVista:3, win2008:3) > 0)
{
  SP = get_kb_item("SMB/WinVista/ServicePack");

  if(!SP) {
    SP = get_kb_item("SMB/Win2008/ServicePack");
  }

  if("Service Pack 2" >< SP)
  {
    if(version_is_less(version:dllVer, test_version:"6.0.6002.18533") ||
       version_in_range(version:dllVer, test_version:"6.0.6002.22000", test_version2:"6.0.6002.22731")){
      security_message( port: 0, data: "The target host was found to be vulnerable" );
    }
    exit(0);
  }
  security_message( port: 0, data: "The target host was found to be vulnerable" );
}

else if(hotfix_check_sp(win7:2) > 0)
{
  if(version_is_less(version:dllVer, test_version:"6.1.7600.16905") ||
     version_in_range(version:dllVer, test_version:"6.1.7600.20000", test_version2:"6.1.7600.21076")||
     version_in_range(version:dllVer, test_version:"6.1.7601.16000", test_version2:"6.1.7601.17712")||
     version_in_range(version:dllVer, test_version:"6.1.7601.21000", test_version2:"6.1.7601.21846")){
    security_message( port: 0, data: "The target host was found to be vulnerable" );
  }
}

