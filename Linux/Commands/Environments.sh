#!/bin/bash

=== Linux Commands Cheatsheet: Understanding the Environment ===

# Environment Variables - Understanding and Usage

# Display all environment variables
printenv

# Display the value of a specific environment variable
echo $VAR_NAME

# Set an environment variable for the current session
export VAR_NAME=value

# Set an environment variable for the current session and subsequent sessions (add to shell profile)
echo 'export VAR_NAME=value' >> ~/.bashrc  # For Bash
source ~/.bashrc  # Reload the Bash configuration

# Unset (remove) an environment variable for the current session
unset VAR_NAME

# PATH - Defines the directories to search for executable files
echo $PATH

# HOME - Home directory of the current user
echo $HOME

# USER - Current username
echo $USER

# SHELL - Current shell
echo $SHELL

# LANG - Specifies the language settings
echo $LANG

# PWD - Current working directory
echo $PWD

# PS1 - Custom prompt for the command line
echo $PS1

# UID - User ID of the current user
echo $UID

# TERM - Specifies the terminal type
echo $TERM

# LD_LIBRARY_PATH - Directories to search for shared libraries
echo $LD_LIBRARY_PATH

# EDITOR - Default text editor
echo $EDITOR

# DISPLAY - X server display number
echo $DISPLAY

# TZ - Timezone
echo $TZ

# HISTSIZE - Number of commands to remember in command history
echo $HISTSIZE

# HISTFILE - File where command history is stored
echo $HISTFILE

# HOSTNAME - Hostname of the system
echo $HOSTNAME

# LOGNAME - Login name of the user
echo $LOGNAME

# MAIL - Location of the user's mailbox
echo $MAIL

# SSH_AGENT_PID - Process ID of the SSH agent
echo $SSH_AGENT_PID

# SSH_AUTH_SOCK - Path to the SSH authentication socket
echo $SSH_AUTH_SOCK

# SHELL - Current shell
echo $SHELL

# Set a variable for the current session and subsequent sessions (add to shell profile):
echo 'export MY_VARIABLE=value' >> ~/.bashrc  # For Bash
source ~/.bashrc  # Reload the Bash configuration

# Setting multiple variables at once:
export VAR1=value1 VAR2=value2

# Remove a variable from shell profile (for subsequent sessions):
sed -i '/export MY_VARIABLE/d' ~/.bashrc  # For Bash
source ~/.bashrc  # Reload the Bash configuration

# Unset multiple variables:
unset VAR1 VAR2

# Remove multiple variables from shell profile:
sed -i '/export VAR1/d; /export VAR2/d' ~/.bashrc  # For Bash
source ~/.bashrc  # Reload the Bash configuration

# Understanding The PATH Variable - The PATH variable is integral to the shell's functionality, dictating the directories searched for executable programs.


# View the current PATH
echo $PATH

# Add a directory to the beginning of PATH
export PATH=/new/directory:$PATH

# Add a directory to the end of PATH
export PATH=$PATH:/new/directory

# Add multiple directories at once
export PATH=/new/directory1:/new/directory2:$PATH

# Remove a directory from PATH
export PATH=$(echo $PATH | sed 's;/old/directory:;;')

# Temporarily modify PATH for a single command
PATH=/temporary/directory:$PATH command_to_run

# Restore PATH to its original state
export PATH=$ORIGINAL_PATH














