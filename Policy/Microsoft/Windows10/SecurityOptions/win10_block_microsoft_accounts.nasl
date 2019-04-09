##############################################################################
# OpenVAS Vulnerability Test
# $Id: win10_block_microsoft_accounts.nasl 10649 2018-07-27 07:16:55Z emoss $
#
# Check value for Accounts: Block Microsoft accounts (WMI)
#
# Authors:
# Emanuel Moss <emanuel.moss@greenbone.net>
#
# Copyright:
# Copyright (c) 2018 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.109152");
  script_version("$Revision: 10649 $");
  script_tag(name:"last_modification", value:"$Date: 2018-07-27 09:16:55 +0200 (Fri, 27 Jul 2018) $");
  script_tag(name:"creation_date", value:"2018-05-04 13:41:05 +0200 (Fri, 04 May 2018)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:H/Au:S/C:N/I:N/A:N");
  script_tag(name:"qod", value:"97");
  script_name('Microsoft Windows 10: Accounts: Block Microsoft accounts');
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH");
  script_family("Policy");
  script_dependencies("smb_reg_service_pack.nasl");
  script_add_preference(name:"Value", type:"radio", value:"0;1;3");
  script_mandatory_keys("Compliance/Launch");
  script_tag(name: "summary", value: "This setting prevents using the Settings 
app to add a Microsoft account for single sign-on (SSO) authentication for 
Microsoft services and some background services, or using a Microsoft account 
for single sign-on to other applications or services.

There are two options if this setting is enabled:

- Users can't add Microsoft accounts means that existing connected accounts 
can still sign in to the device (and appear on the Sign in screen). However, 
users cannot use the Settings app to add new connected accounts (or connect 
local accounts to Microsoft accounts).

- Users can't add or log on with Microsoft accounts means that users cannot 
add new connected accounts (or connect local accounts to Microsoft accounts) 
or use existing connected accounts through Settings.

If you disable or do not configure this policy (recommended), users will be able 
to use Microsoft accounts with Windows.");
  exit(0);
}

include("smb_nt.inc");
include("policy_functions.inc");

if(!get_kb_item("SMB/WindowsVersion")){
  policy_logging(text:'Host is no Microsoft Windows System or it is not possible
to query the registry.');
  exit(0);
}

WindowsName = get_kb_item("SMB/WindowsName");
if('windows 10' >!< tolower(WindowsName)){
  policy_logging(text:'Host is not a Microsoft Windows 10 System.');
  exit(0); 
}

type = 'HKLM';
key = 'SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System';
item = 'NoConnectedUser';
title = 'Accounts: Block Microsoft accounts';
fixtext = 'Set following UI path accordingly:
Computer Configuration/Windows Settings/Security Settings/Local Policies/Security Options/' + title;
default = script_get_preference('Value');
value = registry_get_dword(key:key, item:item, type:type);

if( value == ''){
  value = 'none';
}

if(int(value) == int(default)){
  compliant = 'yes';
}else{
  compliant = 'no';
}

policy_logging(text:'"' + title + '" is set to: ' + value);
policy_add_oid();
policy_set_dval(dval:default);
policy_fixtext(fixtext:fixtext);
policy_control_name(title:title);
policy_set_kb(val:value);
policy_set_compliance(compliant:compliant);

exit(0);
