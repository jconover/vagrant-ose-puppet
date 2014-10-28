
file {'/etc/puppet/puppet.conf':
  section => 'main',
  setting => 'autosign',
  value   => 'true',
}
service {'httpd':
  ensure => running,
  enable => true,
}
