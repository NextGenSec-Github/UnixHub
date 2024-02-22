#!/bin/bash

# NOTE: MUST INSTALL MAIL FUNCTIONALITY TO SEND MAIL

# Analyze logs for security incidents

# Define log file path
echo "Specify your log file path:"

read LOG_FILE

# Specify the email you would like to get incident notifications:
echo "Security Incident Email: "

read EMAIL


# Search for potential security issues
grep -i -E 'error|warning|critical' $LOG_FILE > security_incidents.txt

# Notify if security incidents are found
if [ -s security_incidents.txt ]; then
        mail -s "Security Incidents Detected" $EMAIL < security_incidents.txt
        echo "Security incidents detected. Email Sent To Security Team."
else
        echo "No security incidents found."

fi
