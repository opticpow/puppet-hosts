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
        ensure       => present,
        ip           => '127.0.0.1',
        host_aliases => 'localhost';

    "${::hostname}.vagrantup.com":
        ensure       => present,
        ip           => "${::ipaddress}",
        host_aliases => ["$hostname",'puppet'];

  }
}
