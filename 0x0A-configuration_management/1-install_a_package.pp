# Using Puppet, install flask from pip3
package { 'python3-pip':
  ensure  => '2.1.0',
  provider => 'pip',
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install flask',
  path        => '/usr/bin',
  logoutput   => true,
  refreshonly => true,
  require     => Package['python3-pip'],
}
