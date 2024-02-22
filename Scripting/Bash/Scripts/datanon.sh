#!/bin/bash
# Anonymize sensitive data in a dataset

echo "Enter the path to the dataset:"
read dataset

# Replace sensitive fields with random values
sed -i 's/[0-9]\{3\}-[0-9]\{2\}-[0-9]\{4\}/XXX-XX-XXXX/g' $dataset
sed -i 's/[0-9]\{4\}-[0-9]\{4\}-[0-9]\{4\}-[0-9]\{4\}/XXXX-XXXX-XXXX-XXXX/g' $dataset
sed -i 's/[0-9]\{16\}/XXXXXXXXXXXXXXXX/g' $dataset

echo "Sensitive data anonymized."
