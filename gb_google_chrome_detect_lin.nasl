###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_google_chrome_detect_lin.nasl 10925 2018-08-11 08:37:51Z cfischer $
#
# Google Chrome Version Detection (Linux)
#
# Authors:
# Madhuri D <dmadhuri@secpod.com>
#
# Copyright:
# Copyright (c) 2010 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.801446");
  script_version("$Revision: 10925 $");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_tag(name:"last_modification", value:"$Date: 2018-08-11 10:37:51 +0200 (Sat, 11 Aug 2018) $");
  script_tag(name:"creation_date", value:"2010-09-21 16:43:08 +0200 (Tue, 21 Sep 2010)");
  script_name("Google Chrome Version Detection (Linux)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Product detection");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("login/SSH/success");
  script_exclude_keys("ssh/no_linux_shell");

  script_tag(name:"summary", value:"Detects the installed version of Google Chrome on Linux.

  The script logs in via shh, extracts the version from the binary file and set it in KB.");

  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("version_func.inc");
include("cpe.inc");
include("host_details.inc");

chromePath = "/usr/bin/google-chrome";

buffer_rpm = get_kb_item("ssh/login/rpms");
if(!isnull(buffer_rpm) && buffer_rpm =~ "google-chrome"){
  version = eregmatch(pattern:"google-chrome.?([a-zA-z])*.?([0-9.]+)", string:buffer_rpm);
  if(!isnull(version[2])){
    chromeVer = version[2];
  }
}

if(isnull(chromeVer)){
  buffer_deb = get_kb_item("ssh/login/packages");
  if(!isnull(buffer_deb) && buffer_deb =~ "google-chrome"){
    google_match = egrep(pattern:"google-chrome.*", string:buffer_deb);
    if(!isnull(google_match)){
      version = eregmatch(pattern:"([0-9.]+)", string:google_match);
      if(!isnull(version)){
        chromeVer = version[1];
      }
    }
  }
}

if(!isnull(chromeVer)){
  set_kb_item(name:"Google-Chrome/Linux/Ver", value:chromeVer);

  cpe = build_cpe(value:chromeVer, exp:"^([0-9.]+)", base:"cpe:/a:google:chrome:");
  if(isnull(cpe))
    cpe = "cpe:/a:google:chrome";

  register_product(cpe:cpe, location:chromePath);

  log_message(data:build_detection_report(app:"Google Chrome",
                                         version:chromeVer,
                                         install:chromePath,
                                         cpe:cpe,
                                         concluded:chromeVer));
}
