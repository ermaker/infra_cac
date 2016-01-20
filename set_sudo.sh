SUDO_FILE=/etc/sudoers.d/90-cloud-init-users
echo 'user ALL=(ALL) NOPASSWD:ALL' > $SUDO_FILE
chmod 440 $SUDO_FILE
