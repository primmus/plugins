##############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_openmairie_openannuaire_mult_file_incl_vuln.nasl 14326 2019-03-19 13:40:32Z jschulte $
#
# OpenMairie openAnnuaire Multiple File Include Vulnerabilities
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
  script_oid("1.3.6.1.4.1.25623.1.0.800780");
  script_version("$Revision: 14326 $");
  script_tag(name:"last_modification", value:"$Date: 2019-03-19 14:40:32 +0100 (Tue, 19 Mar 2019) $");
  script_tag(name:"creation_date", value:"2010-05-25 13:56:16 +0200 (Tue, 25 May 2010)");
  script_cve_id("CVE-2010-1921", "CVE-2010-1920");
  script_bugtraq_id(39887);
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_name("OpenMairie openAnnuaire Multiple Remote File Include Vulnerabilities");
  script_xref(name:"URL", value:"http://secunia.com/advisories/39673");
  script_xref(name:"URL", value:"http://www.exploit-db.com/exploits/12486");
  script_xref(name:"URL", value:"http://www.vupen.com/english/advisories/2010/1059");

  script_tag(name:"qod_type", value:"remote_vul");
  script_category(ACT_ATTACK);
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("gb_openmairie_prdts_detect.nasl");
  script_require_ports("Services/www", 80);
  script_tag(name:"insight", value:"Input passed to the parameter 'path_om' in various files and
to the parameter 'dsn[phptype]' in 'scr/soustab.php' are not properly verified
before being used to include files.");
  script_tag(name:"solution", value:"No known solution was made available for at least one year since the disclosure
  of this vulnerability. Likely none will be provided anymore. General solution options are to upgrade to a newer
  release, disable respective features, remove the product or replace the product by another one.");
  script_tag(name:"summary", value:"This host is running OpenMairie openAnnuaire and is prone to
multiple remote file inclusion vulnerabilities.");
  script_tag(name:"impact", value:"Successful exploitation will allow remote attackers to obtain
sensitive information or compromise a vulnerable system.");
  script_tag(name:"affected", value:"OpenMairie openAnnuaire version 2.00");
  script_tag(name:"solution_type", value:"WillNotFix");
  exit(0);
}


include("http_func.inc");

openPort = get_http_port(default:80);
if(!get_port_state(openPort)){
  exit(0);
}

openVer = get_kb_item("www/"+ openPort + "/OpenMairie/Open_Annuaire");
if(!openVer){
  exit(0);
}

openVer = eregmatch(pattern:"^(.+) under (/.*)$", string:openVer);

if(openVer[2] != NULL)
{
  sndReq = http_get(item:string(openVer[2], "/scr/soustab.php?dsn[phptype]=" +
                    "../../../../../../../../OpenVas-rfi.txt"),port:openPort);
  rcvRes = http_send_recv(port:openPort, data:sndReq);

  if("/OpenVas-rfi.txt/" >< rcvRes && "failed to open stream" >< rcvRes){
    security_message(openPort);
  }
}
