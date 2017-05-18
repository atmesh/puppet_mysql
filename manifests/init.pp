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
mysql::db { 'graphite':
    user     => root,
    password => 'pass',
    grant    => [ 'SELECT' , 'INSERT' , 'UPDATE' , 'DELETE' , 'DROP' , 'CREATE' ,
                  'ALTER' , 'CREATE VIEW' , 'SHOW VIEW' , 'TRIGGER' , 'LOCK TABLES' ],
  }
}
