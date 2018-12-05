class uldap {
  # Install requirements for LDAP 
  Package {ensure => 'installed',
    #before => Exec['setup LDAP']
  }

  package { 'openssh-server': }
  package { 'krb5-user': }
  package { 'ldap-auth-client': }
  package { 'ldap-utils': }
  package { 'libpam-krb5': }
  package { 'libpam-mount': }
  package { 'cifs-utils': }
  package { 'nscd': }
  package { 'libpam-ldap': }
  package { 'libnss-ldap': }

  file { '/etc/pam.d/atd':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/atd',
  }

  file { '/etc/pam.d/chfn':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/chfn',
  }

  file { '/etc/pam.d/chpasswd':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/chpasswd',
  }

  file { '/etc/pam.d/chsh':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/chsh',
  }

  file { '/etc/pam.d/common-account':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/common-account',
  }

  file { '/etc/pam.d/common-auth':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/common-auth',
  }

  file { '/etc/pam.d/common-password':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/common-password',
  }

  file { '/etc/pam.d/common-session':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/common-session',
  }

  file { '/etc/pam.d/common-session-noninteractive':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/common-session-noninteractive',
  }

  file { '/etc/pam.d/cron':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/cron',
  }

  file { '/etc/pam.d/login':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/login',
  }

  file { '/etc/pam.d/newusers':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/newusers',
  }

  file { '/etc/pam.d/other':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/other',
  }

  file { '/etc/pam.d/passwd':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/passwd',
  }

  file { '/etc/pam.d/polkit-1':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/polkit-1',
  }

  file { '/etc/pam.d/runuser':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/runuser',
  }

  file { '/etc/pam.d/runuser-l':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/runuser-l',
  }

  file { '/etc/pam.d/samba':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/samba',
  }

  file { '/etc/pam.d/sshd':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/sshd',
  }

  file { '/etc/pam.d/su':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/su',
  }

  file { '/etc/pam.d/sudo':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/sudo',
  }

  file { '/etc/pam.d/systemd-user':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/systemd-user',
  }

  file { '/etc/pam.d/vmtoolsd':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/pam.d/vmtoolsd',
  }

  file { '/etc/profile.d/configure-pam-mount.sh':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/profile.d/configure-pam-mount.sh',
  }

  file { '/etc/ssh/sshd_config':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/ssh/sshd_config',
  }

    file { '/etc/krb5.conf':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/krb5.conf',
  }

  file { '/etc/pam.d/nscd.conf':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/nscd.conf',
  }

  file { '/etc/profile.d/nsswitch.conf':
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/nsswitch.conf',
  }

}
