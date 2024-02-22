#!/bin/bash

# Log correlation and analysis script for security monitoring

# Define log files paths
LOG_FILES="/var/log/web.log /var/log/db.log /var/log/firewall.log"

# Define keywords to search for
KEYWORDS=("error" "warning" "critical" "unauthorized access")

# Search for keywords in log files
for file in $LOG_FILES; do
        echo "Analyzing $file..."
        for keyword in "${KEYWORDS[@]}"; do
                grep -i "$keyword" $file >> temp_analysis.txt
        done
done


# Perform correlation analysis
echo "Performing correlation analysis"
correlated_incidents=$(sort temp_analysis.txt | unic -c | awk '{if ($1 >= 2) print $2}')


# Generate actionable insights

if [ -n "$correlated_incidents" ]; then
        echo "Correlated security incidents detected:"
        echo "$correlated_incidents"
        echo "Action: Notify incident response team and initiate investigation."

        echo "No correlation security incidents found."
fi

rm temp_analysis.txt
