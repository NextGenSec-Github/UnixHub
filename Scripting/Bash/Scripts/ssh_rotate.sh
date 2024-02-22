#!/bin/bash
# Rotate SSH keys for enhanced security

echo "Generating new SSH key pair...."
ssh-keygen -t rsa -n 4096 -f ~/.ssh/new_key -N ''

echo "Updating SSH configuration...."

sed -i 's/.*RSAAuthentication.*/RSAAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/.*PubkeyAuthentication.*/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/.*AuthorizedKeysFile.*/AuthorizedKeysFile      .ssh\/authorized_keys .ssh\/new_key/g' /etc/ssh/sshd_config


echo "Restarting SSH Service...."
systemctl restart sshd

echo "SSH key rotation complete."
