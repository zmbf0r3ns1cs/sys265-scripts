# SECURE-SSH.SH
# AUTHOR: ZMBF0R3NS1CS
# Creates a new ssh user called $1
# Adds a public key to that user's authorized keys file
# Removes root's ability to ssh in

sudo useradd $1
sudo mkdir /home/$1/.ssh
sudo cp linux/public-keys/sys265.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$1/.ssh

echo "PermitRootLogin no" >> /etc/ssh/sshd_config
