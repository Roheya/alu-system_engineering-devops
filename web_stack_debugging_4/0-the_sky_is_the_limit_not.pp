# Increase Nginx's open file limit to handle concurrent requests
file { '/etc/default/nginx':
  ensure  => file,
  content => "ULIMIT=\"-n 4096\"\n",
  notify  => Exec['restart-nginx'],
}

exec { 'restart-nginx':
  command     => '/usr/sbin/service nginx restart',
  refreshonly => true,
}
