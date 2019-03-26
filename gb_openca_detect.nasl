###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_openca_detect.nasl 6032 2017-04-26 09:02:50Z teissa $
#
# OpenCA Detection
#
# Authors:
# Christian Fischer <christian.fischer@greenbone.net>
#
# Copyright:
# Copyright (c) 2016 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version
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
  script_oid("1.3.6.1.4.1.25623.1.0.108001");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_version("$Revision: 6032 $");
  script_tag(name:"last_modification", value:"$Date: 2017-04-26 11:02:50 +0200 (Wed, 26 Apr 2017) $");
  script_tag(name:"creation_date", value:"2016-09-15 09:00:00 +0200 (Thu, 15 Sep 2016)");
  script_name("OpenCA Detection");
  script_category(ACT_GATHER_INFO);
  script_family("Product detection");
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_dependencies("find_service.nasl", "http_version.nasl");
  script_require_ports("Services/www", 80);
  script_exclude_keys("Settings/disable_cgi_scanning");

  script_tag(name:"summary", value:"Detection of OpenCA.

  The script sends a connection request to the server and attempts to
  extract the version number from the reply.");

  script_tag(name:"qod_type", value:"remote_banner");

  exit(0);
}

include("http_func.inc");
include("http_keepalive.inc");
include("cpe.inc");
include("host_details.inc");

port = get_http_port( default:80 );

foreach dir( make_list_unique( "/cgi-bin", cgi_dirs( port:port ) ) ) {

  install = dir;
  if( dir == "/" ) dir = "";

  foreach url( make_list( dir + "/pub/pki?cmd=serverInfo", dir + "/pki/pub/pki?cmd=serverInfo" ) ) {

    req = http_get( item:url, port:port );
    buf = http_keepalive_send_recv( port:port, data:req, bodyonly:FALSE );

    if( buf =~ "HTTP/1.. 200" && ( ( "Server Information for" >< buf && "OpenCA" >< buf ) ||
        "http://www.openca.org" >< buf || "OpenCA Labs" >< buf || "document.OPENCA" >< buf ) ) {

      version = "unknown";
      concludedUrl = report_vuln_url( port:port, url:url, url_only:TRUE );

      ver = eregmatch( string:buf, pattern:"Version ([0-9rc.-]+)</title>", icase:TRUE );
      if( ! isnull( ver[1] ) ) version = ver[1];

      tmp_version = version + " under " + install;
      set_kb_item( name:"www/" + port + "/openca", value:tmp_version );
      set_kb_item( name:"openca/installed", value:TRUE );

      cpe = build_cpe( value:version, exp:"^([0-9rc.-]+)", base:"cpe:/a:openca:openca:" );
      if( isnull( cpe ) )
        cpe = 'cpe:/a:openca:openca';

      register_product( cpe:cpe, location:install, port:port );

      log_message( data:build_detection_report( app:"OpenCA",
                                                version:version,
                                                install:install,
                                                cpe:cpe,
                                                concluded:ver[0],
                                                concludedUrl:concludedUrl ),
                                                port:port );
    }
  }
}

exit( 0 );
