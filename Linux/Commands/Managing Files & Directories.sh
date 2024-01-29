#!/bin/bash

echo "=== Linux Commands Cheatsheet ==="

cat <<EOF
Navigation:
1. pwd       : Print working directory
2. cd        : Change directory
   - cd <directory>
   - cd ..
   - cd ~
3. ls        : List files and directories
   - ls -l
   - ls -a
   - ls -lh

File and Directory Operations:
1. cp        : Copy files or directories
   - cp <source> <destination>
   - cp -r <source_directory> <destination_directory>
2. mv        : Move or rename files or directories
   - mv <source> <destination>
3. rm        : Remove files or directories
   - rm <file>
   - rm -r <directory>
   - rm -f <file>
4. mkdir     : Create a new directory
   - mkdir <directory_name>
5. rmdir     : Remove an empty directory
   - rmdir <directory_name>
6. touch     : Create an empty file or update file timestamps
   - touch <file>

File Viewing and Editing:
1. cat       : Display the contents of a file
   - cat <file>
2. more      : Display the contents of a file one screen at a time
   - more <file>
3. less      : Similar to more but with additional features
   - less <file>
4. nano/vi   : Text editors for creating and editing files
   - nano <file> or vi <file>

Searching:
1. find      : Search for files and directories
   - find <directory> -name <filename>
2. grep      : Search for patterns in files
   - grep <pattern> <file>
   - grep -r <pattern> <directory>

Permissions:
1. chmod     : Change file permissions
   - chmod <permissions> <file>
2. chown     : Change file owner and group
   - chown <user>:<group> <file>

System Information:
1. df        : Display disk space usage
2. du        : Display file and directory space usage
EOF

