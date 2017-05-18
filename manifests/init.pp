# Class: puppet_mysql
#
# This module manages puppet_mysql
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class puppet_mysql {
  
  include '::mysql::server'
  
  class { '::mysql::server':
  root_password           => 'pass',
  remove_default_accounts => true,
}

}
