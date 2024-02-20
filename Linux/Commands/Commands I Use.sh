# #!/bin/bash

=== Linux Commands Cheatsheet: Commands I Use ===
# NOTE: These are just miscallaneous commands I use on my job and day to day basis, so they may be more geared towards security. E.g. parsing a log file etc.

# ======
# BASICS
# ======

# View the command history
history

# Execute the 10th command in history
!10

# Execute the previous command
!! 

# Read sample.txt file
cat sample.txt

# =============
# READING FILES
# =============

# Read the first 10 lines of the file
head sample.txt

# Read the last 10 lines of the file
tail sample.txt


# =============
# FIND & FILTER 
# =============

# Cut the first field
cat sample.txt | cut -f 1

# Cut the 1st column
cat sample.txt | cut -c 1

# Sort outputs alphabetically
cat sample.txt | sort

# Sort outputs numerically
cat sample.txt | sort -n

# Eliminate duplicate lines
cat sample.txt | uniq

# Count line numbers
cat sample.txt | wc -l

# Show line numbers
cat sample.txt | n1

# Print line 11
cat sample.txt | sed -n '11p'

# Print lines between 10-15
cat sample.txt | sed -n '10,15p'

# Print lines below 11
cat sample.txt | awk 'NR < 11 {print $0}'

# Print line 11
cat sample.txt | aws 'NR == 11 {print $0}'

# Sort and remove duplicates
sort | uniq

# Sort and remove duplicates and count the number of occurrences for each value
sort | uniq -c

# Sort values numerically and recursively
sort -nr

# Reverse string characters
rev

# Cut field 1
cut -f 1

# Split the string on every dot and print keep the first two fields
cut -d '.' -f 1-2

# Display lines that  don't match the "test" string
grep -v 'test'

# Display lines that don't match one or both "test1" and "test2" strings.
grep -v -e 'test1' -e 'test2'

# View file information
file

# Search the "Testvalue1" string everywhere, organise column spaces and view the output with less.
grep -rin Testvalue1 * | column -t | less -S


















