# Puppet script to create ssh config file

file_line { '/etc/ssh/ssh_config':
  ensure => 'present',
  line   => '    PasswordAuthentication no',
}

file_line { '/etc/ssh/ssh_config':
  ensure => 'present',
  line   => '    IdentityFile ~/.ssh/school',
}
