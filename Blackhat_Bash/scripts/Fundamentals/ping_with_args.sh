#!/bin/bash

# This script will ping any IP address provided as an argument

SCRIPT_NAME="${0}"
TARGET="${1}"

echo "Running the script ${SCRIPT_NAME}..."
echo "Pinging the target: ${TARGET}..."

ping "${TARGET}"
