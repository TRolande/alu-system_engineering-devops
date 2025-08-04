# This Puppet manifest configures file descriptor limits for the holberton user to prevent "Too many open files" errors

# Ensure PAM applies limits for all sessions
file_line { 'pam_limits_session':
  path  => '/etc/pam.d/common-session',
  line  => 'session required pam_limits.so',
  match => '^session\s+required\s+pam_limits.so',
}

file_line { 'pam_limits_noninteractive':
  path  => '/etc/pam.d/common-session-noninteractive',
  line  => 'session required pam_limits.so',
  match => '^session\s+required\s+pam_limits.so',
}

# Set the soft and hard nofile limits for holberton
file_line { 'holberton_soft_nofile':
  path  => '/etc/security/limits.conf',
  line  => 'holberton soft nofile 1024',
}

file_line { 'holberton_hard_nofile':
  path  => '/etc/security/limits.conf',
  line  => 'holberton hard nofile 4096',
}

