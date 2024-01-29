#!/bin/bash

cat <<EOF
=== Linux Commands Cheatsheet ===

Navigation:
1. pwd       - Print working directory
2. cd        - Change directory
              - cd <directory>: Change to a specific directory
              - cd ..: Move up one directory
              - cd ~: Change to the home directory
3. ls        - List files and directories
              - ls -l: Detailed list view
              - ls -a: List all files, including hidden ones
              - ls -lh: Human-readable file sizes

File and Directory Operations:
1. cp        - Copy files or directories
              - cp <source> <destination>: Copy a file or directory
              - cp -r <source_directory> <destination_directory>: Recursive copy
2. mv        - Move or rename files or directories
              - mv <source> <destination>: Move or rename a file or directory
3. rm        - Remove files or directories
              - rm <file>: Remove a file
              - rm -r <directory>: Remove a directory and its contents (use with caution)
              - rm -f <file>: Force removal without confirmation
4. mkdir     - Create a new directory
              - mkdir <directory_name>: Create a new directory
5. rmdir     - Remove an empty directory
              - rmdir <directory_name>: Remove an empty directory
6. touch     - Create an empty file or update file timestamps
              - touch <file>: Create an empty file

File Viewing and Editing:
1. cat       - Display the contents of a file
              - cat <file>: Display the entire contents of a file
2. more      - Display the contents of a file one screen at a time
              - more <file>: Paginate through the contents of a file
3. less      - Similar to more but with additional features
              - less <file>: Paginate through the contents of a file with more features
4. nano/vi   - Text editors for creating and editing files
              - nano <file> or vi <file>: Open a text editor for file editing

Searching:
1. find      - Search for files and directories
              - find <directory> -name <filename>: Search for a file in a directory
2. grep      - Search for patterns in files
              - grep <pattern> <file>: Search for a pattern in a file
              - grep -r <pattern> <directory>: Recursive search in a directory

Permissions:
1. chmod     - Change file permissions
              - chmod <permissions> <file>: Change the permissions of a file
2. chown     - Change file owner and group
              - chown <user>:<group> <file>: Change the owner and group of a file

System Information:
1. df        - Display disk space usage
2. du        - Display file and directory space usage
EOF

