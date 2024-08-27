#!/bin/bash

SITENAME=${1}
DOMAIN=${2}
OUTPUT_FILE="ping_results.csv"

# Check if arguments are set

if [[ -z "${SITENAME}" ]] || [[ -z "${DOMAIN}" ]]; then
  echo "You must provide two arguments: SITENAME DOMAIN_NAME"
  echo "Example: ${0} mysite google.com"
  exit 1
fi

# Write data headers to the results file
echo "status,name,domain,date" > "${OUTPUT_FILE}"

if ping -c 1 "${DOMAIN}" &> /dev/null; then
  echo "success,${SITENAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
else
  echo "failure,${SITENAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
fi
