#!/bin/bash

=== Linux Commands Cheatsheet: Managing Files & Directories ===

# Navigation and Listing

# Change Directory
cd directory_path

# List Files
ls

# List Files with Details
ls -l

# List All Files (including hidden)
ls -a

# List Files with Details and Hidden Files
ls -la


# File and Directory Operations

# Create a Directory
mkdir directory_name

# Create a File
touch filename

# Copy a File
cp source_file destination

# Copy a Directory
cp -r source_directory destination

# Move/Rename a File
mv old_name new_name

# Move/Rename a Directory
mv old_directory new_directory

# Remove (Delete) a File
rm filename

# Remove (Delete) a Directory and its Contents
rm -r directory_name

# View File Contents
cat filename

# Edit a File (using a text editor like nano, vim, or emacs)
nano filename  # or vim, emacs, etc.

# File Permissions:

# Change File Permissions
chmod permissions filename

# Change Directory Permissions
chmod permissions directory_name

#File Globbing:

# List all files in the current directory
echo *

# List all files with a specific extension (e.g., .txt)
echo *.txt

# List all files with names starting with "file"
echo file*

# List all files with names ending with "file"
echo *file

# List all files with names containing "pattern"
echo *pattern*

# List all files in subdirectories (recursive)
echo **/*

# List all files with names starting with "file" in subdirectories (recursive)
echo **/file*

# List all files with names ending with ".txt" in subdirectories (recursive)
echo **/*.txt

# List all files with names starting with "file" or "document"
echo {file*,document*}

# List all files with names starting with "file" or "document" in subdirectories (recursive)
echo **/{file*,document*}

mv *.jpg {file_directory}


Find:

# List All Files in a Directory
find . 

# To list only files
find . -type f

# To list only directories
find . -type d 

# Filtering by Modification Time: To find files modified within the last seven days:
find . -type f -mtime -7

# To find files larger than one megabyte:
find . -type f -size +1M

# Deleting Empty Files:
find . -type f -empty -delete

# Deletes all files in the specified directory
find . -type f -delete

# Use man to access the manual pages for detailed information
man find

# To find files with a specific name (e.g., "example.txt"):
find . -type f -name "example.txt"

# To find files with a specific exstension:
find . -type f -name "*.py"

# To find files modified more than 30 days ago:
find . -type f -mtime +30

# Combining Conditions: To find files modified within the last 7 days and larger than 1GB:
find . -type f -mtime -7 -size +1G

# To execute a command on each found file (e.g., delete all .tmp files):
# NOTE: Replace rm with the desired command.
find . -type f -name "*.tmp" -exec rm {} \;

# Handling Permission Errors: Redirects error messages to /dev/null.
find . -type f -name "example.txt" 2>/dev/null

# To find files with specific permissions (e.g., read and write for the owner):
find . -type f -perm -600

# To find files owned by a specific user or group:
find . -type f -user username
find . -type f -group groupname

# To find and list empty directories:
find . -type d -empty

# To find directories modified in the last 7 days:
find . -type d -mtime -7

# To find files not matching a certain pattern:
find . -type f ! -name "ignore.txt"

# To display only the file names without path: %f is the file name without path
find . -type f -printf "%f\n"

# Delete files that are bigger than 10MB
find . -type f -size +10M -delete

# Pattern Matching & More with Grep

# Basic Text Search: Search for a specific pattern in a file
grep "pattern" filename

# Case-Insensitive Search: Performing a case-insensitive search
grep -i "pattern" filename

# Recursive Searches: Searching for a pattern in all files within a directory (recursively)
grep -r "pattern" /path/to/directory

# Show Line Numbers: Displaying line numbers along with matching lines
grep -n "pattern" filename

# Inverting Matches: Displaying lines that do not match the pattern
grep -v "pattern" filename

# Counting Matches: Counting the number of lines that match the pattern
grep -c "pattern" filename

# Advanced Pattern Matching: Using extended regular expressions for complex patterns
grep -E "pattern" filename

# Word Match: Matching whole words, not substrings
grep -w "word" filename

# Contextual Output: Printing lines before and after the matching line
grep -C 2 "pattern" filename

# Show Only Matching Part: Displaying only the part of the line that matches the pattern
grep -o "pattern" filename

# Filtering File Types: Searching only in files of a specific type (e.g., .txt)
grep "pattern" *.txt

# Reading Files

# Display the contents of a file:
cat filename

# Display multiple files:
cat filename1 filename2

# Concatenate and display files:
cat filename1 filename2 >> exportfile

# Display line numbers with the content:
cat -n filename

# Display non-printing characters (show tabs as ^I, and end lines with $):

cat -v filename

# Display file with line breaks as dollar signs:
cat -e filename

# Append the content of one file to another:
cat file1 >> file2

# Display the first 10 lines of a file:
cat filename | head -n 10

# Display the last 10 lines of a file:
cat filename | tail -n 10

# The less command

# View a file with less:
less filename

# Navigate within less:
- Use arrow keys to scroll up and down.
- Press "Space" to scroll one page down.
- Press "b" to scroll one page up.
- Press "q" to exit less.

# Search within less:
- Press "/" followed by your search term and press Enter.
- Press "n" to go to the next occurrence.
- Press "N" to go to the previous occurrence.

# Display line numbers:
less -N filename

# Highlight search results:
less -p "pattern" filename

# Display line numbers and search highlights:
less -Np "pattern" filename

# Display file with line breaks as dollar signs:
less -S filename

# View multiple files sequentially:
less file1 file2 file3

# Jump to a specific line number:
less +n filename  # Replace 'n' with the line number.

# View file from the end:
less +G filename

# Display help for less:
less --help

# Display version information:
less --version

# Monitor a file for changes (similar to 'tail -f'):
less +F filename

# View compressed files without decompressing:
less filename.gz

# Pipe output of a command into less:
command | less

# Display and follow the output of a command (similar to 'tail -f'):
command |& less

# Word Count (wc) command is used to display the count of lines, words, and characters in a file. 

# Count lines, words, and characters in a file:
wc filename

# Display only the number of lines in a file:
wc -l filename

# Display only the number of words in a file:
wc -w filename

# Display only the number of characters in a file:
wc -c filename

# Display the number of lines, words, and characters for each file in a directory:
wc *

# Count lines, words, and characters for multiple files:
wc file1 file2 file3

# Count lines, words, and characters for all files in a directory and its subdirectories:
find . -type f -exec wc {} +

# Display total counts when processing multiple files:
wc -lwc filename1 filename2

# Display the total count at the end:
cat filename1 filename2 | wc

# Count lines, words, and characters for input from a pipeline:
echo "Hello, World!" | wc

# Display only the total number of lines, words, and characters:
echo "Hello, World!" | wc -lwc

# Count lines, words, and characters for a command output:
ls -l | wc

# Display the number of lines, words, and characters for a specific line range in a file:
sed -n '10,20p' filename | wc

# Display the number of lines in all files with a specific extension in a directory:
find . -type f -name "*.txt" -exec wc -l {} +

# Display the number of lines, words, and characters for a compressed file:
zcat filename.gz | wc

# Display only the number of lines for a compressed file:
zcat filename.gz | wc -l

# This Disk Usage (du) command is used to estimate the space used by a file or directory. 

# Display disk space usage for the current directory:
du

# Display disk space usage in a human-readable format:
du -h

# Display disk space usage for a specific directory:
du directory

# Display total disk space usage for a directory and its subdirectories:
du -h --max-depth=1 directory

# Display total disk space usage for each subdirectory in a directory:
du -h --max-depth=1 directory/*

# Display disk space usage with a summary for each subdirectory:
du -h --max-depth=1 --summarize directory/*

# Display total disk space usage for each subdirectory and sort by size:
du -h --max-depth=1 directory/* | sort -h

# Display disk space usage in kilobytes:
du -k directory

# Display disk space usage for all files in the current directory and its subdirectories:
du -h --max-depth=0 *

# Display disk space usage for a specific file:
du -h filename

# Display disk space usage in human-readable format for a specific file:
du -h --apparent-size filename

# Display only the total disk space usage:
du -h --summarize

# Display total disk space usage for multiple directories:
du -h --max-depth=1 dir1 dir2 dir3

# Display disk space usage for a specific file system:
du -h --max-depth=1 --exclude=/proc --exclude=/sys /

# Display disk space usage in 1K blocks:
du -b directory

# Display disk space usage for a specific file system type:
du -h --max-depth=1 --type=ext4 /

# Display total disk space usage for a directory and its subdirectories in a human-readable format:
du -h --max-depth=1 directory

# Display disk space usage for a directory and its subdirectories, excluding certain patterns:
du -h --exclude='*.log' directory

# Display disk space usage for a directory and its subdirectories, excluding multiple patterns:
du -h --exclude='*.log' --exclude='*.txt' directory






















