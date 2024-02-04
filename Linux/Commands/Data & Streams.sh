#!/bin/bash

=== Linux Commands Cheatsheet: Managing Data & Streams ===

# > and >> operators are used for redirecting output in the command line

# > Operator (Output Redirection)

# Redirect standard output to a file (overwrite existing content):
command > output.txt

# Redirect standard output and standard error to different files:
command > output.txt 2> error.txt

# Redirect standard output and standard error to the same file:
command > output_and_error.txt 2>&1

# Redirect only standard error to a file:
command 2> error.txt

# Redirect only standard error to standard output:
command 2>&1

# Create a new file with the given content:
echo "Hello, World!" > hello.txt

# Overwrite the content of an existing file:
echo "New content" > existing_file.txt

# Append text to an existing file:
echo "Additional text" >> existing_file.txt

# Redirect the output of a command to /dev/null (discard output):
{command} > /dev/null

# Redirect standard output and standard error to a file, and append to the file:
{command} >> output_and_error.txt 2>&1

# Create an empty file:
> empty_file.txt

# >> Operator (Append Output Redirection)

# Append standard output to a file (preserve existing content):
command >> output.txt

# Append standard output and standard error to different files:
command >> output.txt 2>> error.txt

# Append standard output and standard error to the same file:
command >> output_and_error.txt 2>&1

# Append only standard error to a file:
command 2>> error.txt

# Append only standard error to standard output:
command 2>&1

# Append text to an existing file:
echo "Additional text" >> existing_file.txt

# Append the output of a command to /dev/null (discard output):
command >> /dev/null

# Append standard output and standard error to a file, and create the file if it doesn't exist:
command >> output_and_error.txt 2>&1

# Append the content of one file to another:
cat file1 >> file2

# Append the output of a command to an existing file:
echo "New content" >> existing_file.txt


# Pipe Operator (|) - Connecting Commands

# Basic usage: Redirect output of command1 to input of command2
command1 | command2

# Example: List all files in the current directory and pass the list to the 'grep' command to search for a specific pattern
ls -l | grep "pattern"

# Display number of lines in a file using 'wc' command
cat filename.txt | wc -l

# Filter unique lines in a file using 'sort' and 'uniq' commands
cat filename.txt | sort | uniq

# Combine multiple commands to perform complex operations
command1 | command2 | command3

# Count the number of occurrences of a specific pattern in a file
cat filename.txt | grep "pattern" | wc -l

# Display the top processes using 'ps' and 'head' commands
ps aux | head

# Sort and display the processes using 'ps' command based on CPU usage
ps aux --sort=-%cpu | head

# Use 'awk' to extract specific columns from the output of another command
command1 | awk '{print $2}'

# Filter and display specific lines using 'sed' command
cat filename.txt | sed -n '2,5p'

# Filter and display lines that match a regular expression using 'grep'
cat filename.txt | grep -E "regex_pattern"

# Combine 'find' and 'grep' to search for files containing a specific pattern
find /path/to/search -type f -exec grep -l "pattern" {} \;

# Analyze disk space usage using 'du' and 'sort' commands
du -h /path/to/directory | sort -rh

# Calculate the total size of a directory using 'du' and 'awk'
du -sh /path/to/directory | awk '{print $1}'

# Tee Command - Read from standard input and write to standard output and files

# Basic usage: Redirect output of command1 to file1 and standard output
command1 | tee file1

# Append output of command1 to an existing file and standard output
command1 | tee -a file1

# Redirect output to multiple files
command1 | tee file1 file2 file3

# Append output to multiple files
command1 | tee -a file1 file2 file3

# Redirect and display output on the terminal
command1 | tee /dev/tty

# Redirect and display output on the terminal, and also to a file
command1 | tee file1 /dev/tty

# Combine multiple commands and use tee
command1 | tee file1 | command2

# Use tee with sudo to write to a file with elevated privileges
echo "text" | sudo tee /path/to/file

# Redirect standard error to a file and display it on the terminal
command1 2>&1 | tee error.log

# Redirect both standard output and standard error to a file
command1 2>&1 | tee output_and_error.log

# Use tee in a pipeline to create a backup copy of a file
cat original_file | tee backup_file | command1

# Capture and display the output of a command, and also send it to another command
command1 | tee >(command2)

# Display the output of a command, and also send it to another command and a file
command1 | tee >(command2) file1

# Discard standard output and only write to files
command1 > /dev/null | tee file1 file2 file3

# Sort Command - Sorting Text Data

# Sort lines of a file alphabetically
sort filename.txt

# Sort lines in reverse order
sort -r filename.txt

# Sort lines numerically
sort -n filename.txt

# Sort lines in reverse numerical order
sort -nr filename.txt

# Sort lines based on the second column (using space as a delimiter)
sort -k2 filename.txt

# Sort lines based on a specific field (using colon as a delimiter)
sort -t: -k3 filename.txt

# Sort lines ignoring leading blanks
sort -b filename.txt

# Sort lines in a random order
sort -R filename.txt

# Sort a file in-place (overwrite the original file)
sort -o filename.txt filename.txt

# Uniq Command - Removing Duplicate Lines

# Remove adjacent duplicate lines in a sorted file
uniq sorted_file.txt

# Count the number of occurrences of each unique line in a sorted file
uniq -c sorted_file.txt

# Display only the duplicate lines in a sorted file
uniq -d sorted_file.txt

# Display only the unique lines in a sorted file
uniq -u sorted_file.txt

# Ignore a specific number of leading fields while checking for uniqueness
uniq -f N sorted_file.txt

# Ignore a specific number of characters while checking for uniqueness
uniq -s N sorted_file.txt

# Combine sort and uniq to find unique lines in an unsorted file
sort unsorted_file.txt | uniq

# Combine sort and uniq to find duplicate lines in an unsorted file
sort unsorted_file.txt | uniq -d

# Combine sort, uniq, and count to find the most common lines in a file
sort file.txt | uniq -c | sort -nr

# Combine sort and uniq to find common lines between two files
sort file1.txt file2.txt | uniq -d

# Combine sort and uniq to find lines unique to each file
sort file1.txt file2.txt | uniq -u

# tr Command - Translate Characters

# Replace all occurrences of 'a' with 'b' in a file
cat filename.txt | tr 'a' 'b'

# Translate uppercase to lowercase
echo "HELLO" | tr 'A-Z' 'a-z'

# Translate lowercase to uppercase
echo "hello" | tr 'a-z' 'A-Z'

# Delete specific characters
echo "remove spaces" | tr -d ' '

# Replace spaces with underscores
echo "replace spaces" | tr ' ' '_'

# Replace multiple characters with a single character
echo "123-456-789" | tr -s '0-9' '-'

# Translate newline characters to spaces
echo -e "line1\nline2\nline3" | tr '\n' ' '

# Delete all digits from a string
echo "a1b2c3" | tr -d '0-9'

# Translate tabs to spaces
echo -e "col1\tcol2\tcol3" | tr '\t' ' '

# Squeeze multiple occurrences of a character into a single occurrence
echo "squeezeee" | tr -s 'e'

# Translate a range of characters to another range
echo "abcdef" | tr 'a-c' 'x-z'

# Delete non-printable characters
echo -e "hello\tworld" | tr -cd '[:print:]'

# Translate specific characters to another set of characters
echo "apple" | tr 'ae' 'xy'

# Translate characters from one set to another
echo "abc" | tr 'a-c' '123'

# Use tr to remove unwanted characters from a file
cat filename.txt | tr -cd '[:alnum:]\n'

# Translate spaces to commas
echo "word1 word2 word3" | tr ' ' ','

# Translate characters to their octal representation
echo "ABC" | tr -c '[:print:]' '\40\41\42'

# Convert uppercase to lowercase using echo and tr
echo "UPPERCASE" | tr 'A-Z' 'a-z'

# Remove trailing newline characters
echo -e "line1\nline2\n" | tr -d '\n'

# Translate multiple characters to the same character
echo "aaaabbbbcccc" | tr 'a-c' 'x'

# Reverse the order of characters in a string
echo "hello" | rev | tr -d '\n'

# Translate specific characters to their hexadecimal representation
echo "ABC" | xxd -p | tr -d '\n'

# Use tr to ROT13 encode a message
echo "Hello, World!" | tr 'A-Za-z' 'N-ZA-Mn-za-m'

# rev Command - Reverse Order of Characters

# Reverse the characters in a string
echo "hello" | rev

# Reverse the characters in a file
rev filename.txt

# Reverse the characters in multiple lines in a file
cat multiline_file.txt | rev

# Reverse the characters in a string with newline characters
echo -e "line1\nline2\nline3" | rev

# Reverse the characters in a string with tabs
echo -e "col1\tcol2\tcol3" | rev

# Reverse the characters in a string with spaces
echo "word1 word2 word3" | rev

# Reverse the characters in a string with special characters
echo "abc@123#xyz" | rev

# Reverse the characters in a string with digits
echo "12345" | rev

# Reverse the characters in a string with mixed characters
echo "a1b2c3" | rev

# Reverse the characters in a string with non-printable characters
echo -e "hello\tworld" | rev

# Reverse the order of words in a string
echo "This is a test" | rev | awk '{ for(i=NF;i>0;i--) printf "%s ",$i }'

# Reverse the order of characters in a file and save to a new file
rev original.txt > reversed.txt

# Reverse the characters in a string containing Unicode characters
echo "Привет" | rev

# Reverse the characters in a string containing emojis
echo "😊🌍" | rev

# Reverse the characters in a string and remove newline characters
echo -e "line1\nline2\nline3" | rev | tr -d '\n'

# Reverse the characters in a string and remove spaces
echo "word1 word2 word3" | rev | tr -d ' '

# Reverse the characters in a string and replace spaces with underscores
echo "word1 word2 word3" | rev | tr ' ' '_'

# Reverse the characters in a string and delete specific characters
echo "abc123!@#" | rev | tr -d '!@#'

# Reverse the characters in a string and count the number of characters
echo "hello" | rev | wc -c

# Reverse the characters in a string and display on the terminal
echo "hello" | rev | tee /dev/tty


# cut Command - Extract Sections from Lines

# Extract the first three characters from each line in a file
cut -c1-3 filename.txt

# Extract characters 4 to 6 from each line in a file
cut -c4-6 filename.txt

# Extract characters 2 and 5 from each line in a file
cut -c2,5 filename.txt

# Extract the first field (delimited by space) from each line in a file
cut -f1 -d' ' filename.txt

# Extract the second field (delimited by colon) from each line in a file
cut -f2 -d':' filename.txt

# Extract fields 2 and 3 (delimited by tab) from each line in a file
cut -f2,3 -d$'\t' filename.txt

# Extract characters 2 to the end of each line in a file
cut -c2- filename.txt

# Extract the first field using a different delimiter (comma)
cut -f1 -d',' filename.csv

# Extract characters 1 to 5 and 8 to 12 from each line in a file
cut -c1-5,8-12 filename.txt

# Extract fields 2 and 3 using a different delimiter (semicolon)
cut -f2,3 -d';' filename.txt

# Display only the lines that contain a specific delimiter (colon)
cut -f2 -d':' -s filename.txt

# Display only the lines that do not contain a specific delimiter (comma)
cut -f2 -d',' --complement filename.csv

# Extract the first field and the remaining characters from each line
cut -f1 --complement filename.txt

# Display only the lines that do not have a specific character (a)
cut -c1 --complement filename.txt

# Extract the last field (delimited by space) from each line in a file
rev filename.txt | cut -f1 -d' ' | rev

# Extract the last field (delimited by colon) from each line in a file
rev filename.txt | cut -f1 -d':' | rev

# Extract characters 3 to the end of each line using a different delimiter (hyphen)
cut -d'-' -f2- filename.txt

# Extract characters 1 to 4 and 8 to 12 from each line in a file using a different delimiter (underscore)
cut -d'_' -f1-4,8-12 filename.txt

# Extract a specific range of fields (2 to 4) from each line in a file using a different delimiter (pipe)
cut -d'|' -f2-4 filename.txt

# sed Command - Stream Editor

# Replace a specific string in a file
sed 's/old_string/new_string/' filename.txt

# Replace the first occurrence of a string in each line of a file
sed 's/old_string/new_string/' filename.txt

# Replace all occurrences of a string in each line of a file
sed 's/old_string/new_string/g' filename.txt

# Replace a string only in lines that match a pattern
sed '/pattern/s/old_string/new_string/' filename.txt

# Replace a string globally, case-insensitive
sed 's/old_string/new_string/gI' filename.txt

# Replace a string only in lines within a specific range
sed '2,5 s/old_string/new_string/g' filename.txt

# Delete lines that match a specific pattern
sed '/pattern/d' filename.txt

# Delete empty lines in a file
sed '/^$/d' filename.txt

# Add a new line after each line in a file
sed 's/$/\n/' filename.txt

# Add a new line before each line in a file
sed 's/^/\n/' filename.txt

# Remove leading spaces from each line in a file
sed 's/^ *//' filename.txt

# Remove trailing spaces from each line in a file
sed 's/ *$//' filename.txt

# Remove both leading and trailing spaces from each line in a file
sed 's/^ *//;s/ *$//' filename.txt

# Substitute a specific pattern with another using a different delimiter
sed 's|pattern|replacement|' filename.txt

# Replace text in a specific column (e.g., second column, tab-delimited)
sed 's/\told_string/\tnew_string/' filename.txt

# Insert text at the beginning of each line
sed 's/^/inserted_text/' filename.txt

# Append text at the end of each line
sed 's/$/appended_text/' filename.txt

# Print only lines that match a specific pattern
sed -n '/pattern/p' filename.txt

# Print lines within a specific range
sed -n '2,5p' filename.txt

# Print lines that do not match a pattern
sed -n '/pattern/!p' filename.txt

# Swap two words in each line
sed 's/\(word1\) \(word2\)/\2 \1/' filename.txt

# Replace only the second occurrence of a pattern in each line
sed 's/pattern/replacement/2' filename.txt

# Delete lines starting from a specific line number to the end
sed '5,$d' filename.txt

# Duplicate each line in a file
sed 'p' filename.txt

# Delete lines that do not match a pattern
sed '/pattern/!d' filename.txt

# Remove HTML tags from a file
sed 's/<[^>]*>//g' filename.html





