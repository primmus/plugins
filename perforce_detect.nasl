###############################################################################
# OpenVAS Vulnerability Test
# $Id: perforce_detect.nasl 10902 2018-08-10 14:20:55Z cfischer $
#
# Perforce Detection
#
# Authors:
# Michael Meyer <michael.meyer@greenbone.net>
#
# Copyright:
# Copyright (c) 2009 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.100268");
  script_version("$Revision: 10902 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-10 16:20:55 +0200 (Fri, 10 Aug 2018) $");
  script_tag(name:"creation_date", value:"2009-09-07 09:47:24 +0200 (Mon, 07 Sep 2009)");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_tag(name:"cvss_base", value:"0.0");
  script_name("Perforce Detection");
  script_category(ACT_GATHER_INFO);
  script_family("Product detection");
  script_copyright("This script is Copyright (C) 2009 Greenbone Networks GmbH");
  script_dependencies("find_service.nasl");
  script_require_ports("Services/unknown", 1666);

  script_xref(name:"URL", value:"http://www.perforce.com/perforce/products/p4d.html");

  script_tag(name:"summary", value:"This host is running an Perforce Server. The Perforce Server, P4D, manages
  access to versioned files, tracks user operations and records all activity in a
  centralized database.");

  script_tag(name:"qod_type", value:"remote_banner");

  exit(0);
}

include("cpe.inc");
include("host_details.inc");
include("misc_func.inc");
include("dump.inc");

port = get_unknown_port( default:1666 );

soc = open_sock_tcp( port );
if( ! soc ) exit( 0 );

data =
raw_string(0x62,0x62,0x00,0x00,0x00,0x63,0x6d,0x70,0x66,0x69,0x6c,0x65,0x00,0x00,0x00,0x00,
           0x00,0x00,0x63,0x6c,0x69,0x65,0x6e,0x74,0x00,0x02,0x00,0x00,0x00,0x36,0x35,0x00,
           0x73,0x70,0x65,0x63,0x73,0x74,0x72,0x69,0x6e,0x67,0x00,0x03,0x00,0x00,0x00,0x79,
           0x65,0x73,0x00,0x73,0x6e,0x64,0x62,0x75,0x66,0x00,0x05,0x00,0x00,0x00,0x34,0x39,
           0x31,0x35,0x31,0x00,0x72,0x63,0x76,0x62,0x75,0x66,0x00,0x05,0x00,0x00,0x00,0x33,
           0x32,0x37,0x36,0x38,0x00,0x66,0x75,0x6e,0x63,0x00,0x08,0x00,0x00,0x00,0x70,0x72,
           0x6f,0x74,0x6f,0x63,0x6f,0x6c,0x00,0x90,0x90,0x00,0x00,0x00,0x70,0x72,0x6f,0x67,
           0x00,0x16,0x00,0x00,0x00,0x50,0x65,0x72,0x66,0x6f,0x72,0x63,0x65,0x20,0x56,0x69,
           0x73,0x75,0x61,0x6c,0x20,0x43,0x6c,0x69,0x65,0x6e,0x74,0x00,0x74,0x61,0x67,0x00,
           0x03,0x00,0x00,0x00,0x79,0x65,0x73,0x00,0x63,0x6c,0x69,0x65,0x6e,0x74,0x00,0x07,
           0x00,0x00,0x00,0x6f,0x70,0x65,0x6e,0x76,0x61,0x73,0x00,0x63,0x77,0x64,0x00,0x0a,
           0x00,0x00,0x00,0x2f,0x68,0x6f,0x6d,0x65,0x2f,0x6d,0x69,0x6d,0x65,0x00,0x68,0x6f,
           0x73,0x74,0x00,0x04,0x00,0x00,0x00,0x6b,0x69,0x72,0x61,0x00,0x6f,0x73,0x00,0x04,
           0x00,0x00,0x00,0x55,0x4e,0x49,0x58,0x00,0x75,0x73,0x65,0x72,0x00,0x07,0x00,0x00,
           0x00,0x6f,0x70,0x65,0x6e,0x76,0x61,0x73,0x00,0x66,0x75,0x6e,0x63,0x00,0x09,0x00,
           0x00,0x00,0x75,0x73,0x65,0x72,0x2d,0x69,0x6e,0x66,0x6f,0x00);

send( socket:soc, data:data );
ddata = recv( socket:soc, length:4096 );
close( soc );

if( strlen( ddata ) ) {

  retData = bin2string( ddata:ddata, noprint_replacement:'#' );

  if( "server" >< retData && "serverAddress" >< retData ) {

    register_service( port:port, ipproto:"tcp", proto:"perforce" );
    vers = "unknown";

    version = eregmatch( pattern:"serverVersion.*(P[a-zA-Z0-9]+/.*/[0-9]{4}[.]{1}[0-9]+/[0-9]{6})", string:retData );

    if( ! isnull( version[1] ) ) vers = version[1];

    set_kb_item( name:"perforce/" + port + "/version", value:vers );

    cpe = build_cpe( value:vers, exp:"^([0-9]{4}[.]{1}[0-9]+/[0-9]{6})", base:"cpe:/a:perforce:perforce_server:" );
    if( isnull( cpe ) )
      cpe = 'cpe:/a:perforce:perforce_server';

    register_product( cpe:cpe, location:port + "/tcp", port:port );

    log_message( data:build_detection_report( app:"Perforce",
                                              version:vers,
                                              install:port + "/tcp",
                                              cpe:cpe,
                                              concluded:version[0] ),
                                              port:port );
  }
}

exit( 0 );
