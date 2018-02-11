class profile::base {
  user { 'admin1':
    ensure => present,
  }
  include profile::ssh_server
}
