#!/bin/bash
#Scan for open ports on a target machine

echo "Enter the IP address or hostname of the target:"

read target

# Perform port scan using nmap
nmap $target
