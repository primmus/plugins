##############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_squidguard_detect.nasl 11015 2018-08-17 06:31:19Z cfischer $
#
# squidGuard Version Detection
#
# Authors:
# Nikita MR <rnikita@secpod.com>
#
# Copyright:
# Copyright (c) 2009 Greenbone Networks GmbH, http://www.greenbone.net
#
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
  script_oid("1.3.6.1.4.1.25623.1.0.800964");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_version("$Revision: 11015 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-17 08:31:19 +0200 (Fri, 17 Aug 2018) $");
  script_tag(name:"creation_date", value:"2009-11-04 07:03:36 +0100 (Wed, 04 Nov 2009)");
  script_tag(name:"cvss_base", value:"0.0");
  script_name("SquidGuard Version Detection");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"qod_type", value:"executable_version");
  script_copyright("Copyright (C) 2009 Greenbone Networks GmbH");
  script_family("Product detection");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("login/SSH/success");
  script_exclude_keys("ssh/no_linux_shell");

  script_tag(name:"summary", value:"This script detects the installed version of SquidGuard and
  sets the result in KB.");
  exit(0);
}


include("ssh_func.inc");
include("version_func.inc");
include("cpe.inc");
include("host_details.inc");

SCRIPT_DESC = "SquidGuard Version Detection";

sgSock = ssh_login_or_reuse_connection();
if(!sgSock){
  exit(0);
}

getPath = find_bin(prog_name:"squidGuard", sock:sgSock);
foreach binFile (getPath)
{
  sgVer = get_bin_version(full_prog_name:chomp(binFile), sock:sgSock,
                          version_argv:"-v",
                          ver_pattern:"SquidGuard.? ([0-9.]+)([a-z][0-9])?");
  if(sgVer[1] != NULL)
  {
    if(sgVer[2] =~ "^[a-z][0-9]"){
      sgVer = sgVer[1] + "." + sgVer[2];
    }
    else
      sgVer = sgVer[1];
    set_kb_item(name:"SquidGuard/Ver", value:sgVer);
    log_message(data:"squidGuard version " + sgVer +
                       " running at location " + binFile +
                       " was detected on the host");

    cpe = build_cpe(value:sgVer, exp:"^([0-9.]+)", base:"cpe:/a:squidguard:squidguard:");
    if(!isnull(cpe))
       register_host_detail(name:"App", value:cpe, desc:SCRIPT_DESC);

  }
}
ssh_close_connection();
