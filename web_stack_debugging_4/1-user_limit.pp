# This Puppet manifest increases the nofile limit for the holberton user to prevent "Too many open files" errors

file_line { 'pam_limits_session':
  ensure => present,
  path   => '/etc/pam.d/common-session',
  line   => 'session required pam_limits.so',
  match  => '^session\s+required\s+pam_limits.so',
}

file_line { 'pam_limits_noninteractive':
  ensure => present,
  path   => '/etc/pam.d/common-session-noninteractive',
  line   => 'session required pam_limits.so',
  match  => '^session\s+required\s+pam_limits.so',
}

file_line { 'holberton_soft_nofile':
  ensure => present,
  path   => '/etc/security/limits.conf',
  line   => 'holberton soft nofile 1024',
  match  => '^holberton\s+soft\s+nofile',
}

file_line { 'holberton_hard_nofile':
  ensure => present,
  path   => '/etc/security/limits.conf',
  line   => 'holberton hard nofile 4096',
  match  => '^holberton\s+hard\s+nofile',
}

