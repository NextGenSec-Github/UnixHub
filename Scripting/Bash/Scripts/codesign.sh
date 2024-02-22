#!/bin/bash

# Sign code or binaries with GPG for integrity verification

echo "Enter the path to the file to sign:"
read file_to_sign

echo "Enter the GPG key ID for code signing:"
read signing_key

gpg --detach-sign --local-user $signing_key $file_to_sign
