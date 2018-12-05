# This script will check the Windows home directory path given by LDAP
# and update the per-user pam_mount configuration. It will overwrite 
# any previous configuration and take effect at next login.

if [ ! $(grep -q "${USER}:x:${UID}:" /etc/passwd) ]; then

  SANHOME="$(ldapsearch -LLL -x -H ldap://unixldap.cc.ic.ac.uk -b ou=everyone,dc=ic,dc=ac,dc=uk uid=${USER} sn | grep sn:)"
  SANSRV="$(/bin/echo ${SANHOME} | cut -d\\ -f3)"
  SANDIR="$(/bin/echo ${SANHOME} | cut -d\\ -f4-)"

  if [ "${SANSRV}" != "" ]; then
    echo '<?xml version="1.0" encoding="utf-8"?>' > ~/.pam_mount.conf.xml
    echo '<pam_mount>' >> ~/.pam_mount.conf.xml
    echo "<!-- This config file mounts your Windows home directory to ~/homedir " >> ~/.pam_mount.conf.xml
    echo "on login and is overwritten at each login." >> ~/.pam_mount.conf.xml
    echo "To disable, remove /etc/profile.d/configure-pam-mount.sh. -->" >> ~/.pam_mount.conf.xml
    echo "<volume user=\"${USER}\" fstype=\"cifs\" server=\"${SANSRV}\" path=\"${SANDIR}\" mountpoint=\"~/homedir\" options=\"rw,nodev,nosuid,noserverino,uid=${USER}\" />" >> ~/.pam_mount.conf.xml
    echo '</pam_mount>' >> ~/.pam_mount.conf.xml

    # Ensure the .pam_mount.conf has the correct permissions, otherwise
    # we may not be able to read it properly.
    chmod 644 ~/.pam_mount.conf.xml

    # Providing the config has been written successfully, make the mount
    # point.
    if [ -f ~/.pam_mount.conf.xml ]; then
      if [ ! -d ~/homedir ]; then
        mkdir -m 0700 ~/homedir
      fi
    fi
  fi
fi
