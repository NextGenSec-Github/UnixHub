#!/bin/bash
#Scan for open ports on a target machine

echo "Enter the IP address or hostname of the target:"

read target

# Perform port scan using nmap
nmap $target
ysf-unix@DESKTOP-K9OV6GE:/mnt/c/Users/eller/Desktop/Scripting/security_scripts$ cat ssh_rotate.sh
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
