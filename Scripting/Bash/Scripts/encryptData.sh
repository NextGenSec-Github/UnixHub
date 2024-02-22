#!/bin/bash
# Encrypt sensitive data using GPG

echo "Enter the path to the file to encrypt:"
read file_to_encrypt

echo "Enter recipient's GPG key ID:"

read recipient_key

gpg -encrypt --recipient $recipient_key $file_to_encrypt
