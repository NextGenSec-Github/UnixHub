#!/bin/bash

# Audit SSH  keys for authorized users

# Extract authorized keys from SSH configuration
authorized_keys=$(cat /etc/ssh/sshd_config | grep -i 'authorizedkeysfile' | awk '{print $2}')

# Extract list of authorized keys
authorized_keys_list=$(cat $authorized_keys)

# Check for any unauthorized keys
unauthorized_keys=$(grep -v -E '^#|^$' /home/*/authorized_keys | grep -vFxf <(echo "$authorized_keys_list") | cut -d ' ' -f3)

# Notify if unauthorized keys are found
if [ -n "$unauthorized_keys" ]; then
        echo "Unauthorized SSH keys found:"
        echo "$unauthorized_keys"
        echo "Please review and remove these keys."
else
        echo "No unauthorized SSH keys found"
fi
