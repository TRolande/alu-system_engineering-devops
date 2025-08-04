exec { 'change-os-configuration-for-holberton-user':
  command => 'echo "holberton hard nofile 4096" >> /etc/security/limits.conf &&
              echo "holberton soft nofile 1024" >> /etc/security/limits.conf &&
              sed -i "/^session\s*required\s*pam_limits.so/!s/^session.*include.*common-session/&\nsession required pam_limits.so/" /etc/pam.d/common-session &&
              sed -i "/^session\s*required\s*pam_limits.so/!s/^session.*include.*common-session-noninteractive/&\nsession required pam_limits.so/" /etc/pam.d/common-session-noninteractive',
  path    => ['/bin', '/usr/bin'],
}

