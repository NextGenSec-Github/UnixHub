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


# Searching and Finding

# Find Files by Name
find starting_directory -name filename

# Find Files by Type
find starting_directory -type f

# Find Directories
find starting_directory -type d

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

























