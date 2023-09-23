# Puppet script to create ssh config file

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => '
Host your_server_ip
  IdentityFile ~/.ssh/school
  PasswordAuthentication no
',
}
