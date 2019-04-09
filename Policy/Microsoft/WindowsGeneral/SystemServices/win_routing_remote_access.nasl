##############################################################################
# OpenVAS Vulnerability Test
# $Id: win_routing_remote_access.nasl 10714 2018-08-01 14:49:06Z emoss $
#
# Check value for Routing and Remote Access (RemoteAccess)
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
  script_oid("1.3.6.1.4.1.25623.1.0.109275");
  script_version("$Revision: 10714 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-01 16:49:06 +0200 (Wed, 01 Aug 2018) $");
  script_tag(name:"creation_date", value:"2018-06-13 14:53:32 +0200 (Wed, 13 Jun 2018)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:H/Au:S/C:N/I:N/A:N");
  script_tag(name:"qod", value:"97");
  script_name('Microsoft Windows: Service: Routing and Remote Access');
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH");
  script_family("Policy");
  script_dependencies("smb_reg_service_pack.nasl");
  script_add_preference(name:"Value", type:"radio", value:"4;0;1;2;3");
  script_mandatory_keys("Compliance/Launch");
  script_tag(name: "summary", value: "This test checks the setting for policy
'Routing and Remote Access (RemoteAccess)' on Windows hosts (at least Windows 7).

The service offers routing services to businesses in local area and wide area
network environments.");
  exit(0);
}

include("smb_nt.inc");
include("policy_functions.inc");

if(!get_kb_item("SMB/WindowsVersion")){
  policy_logging(text:'Host is no Microsoft Windows System or it is not possible
to query the registry.');
  exit(0);
}

if(get_kb_item("SMB/WindowsVersion") < "6.1"){
  policy_logging(text:'Host is not at least a Microsoft Windows 7 system.
Older versions of Windows are not supported any more. Please update the
Operating System.');
  exit(0);
}

title = 'Routing and Remote Access';
fixtext = 'Set following UI path accordingly:
Computer Configuration/Policies/Windows Settings/Security Settings/System Services' + title;
type = 'HKLM';
key = 'SYSTEM\\CurrentControlSet\\Services\\RemoteAccess';
item = 'Start';
value = registry_get_dword(key:key, item:item, type:type);
if(!value){
  val = '4';
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
policy_control_name(title:title);

exit(0);