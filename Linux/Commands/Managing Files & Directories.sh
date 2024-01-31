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


