# Class: hosts
#
# This module manages hosts
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class hosts {
  host {
    'localhost.localdomin':
      ip => '127.0.0.1',
      alias => 'localhost';
      
    "${::fqdn}": 
      ip => "${::ipaddress}",
      alias => "${::hostname}"; 
  }
}
