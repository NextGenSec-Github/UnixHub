# Fundamental Commands
bash --version # Version of bash shell
env # List environment variables
echo ${SHELL} # Output env variables. Other envars include BASH_VERSION, BASHPID, GROUPS, HOSTNAME, OSTYPE, PWD, RANDOM, UID, SHELL
chmod u+x <script.sh> # Set executable permissions for the user who owns the file
./script.sh # # Execute the script
bash <script.sh> # Execute the script
bash -n script.sh # Reads the script, but does not run it, and shows any syntax errors
bash -x script.sh # Lets you see commands being ran by the script. Great for debugging

# Set -x and set +x: This allows us to set a portion of our script into debug mode
set -x 
<script code>
set +x

# Bash Fundamentals
# Every script should begin with the shebang line. The bash interpreter is typically located at /bin/bash. If youinstead wrote scripts in Python or Ruby, your shebang line would include the full path to the Python or Ruby interpreter
#!/bin/bash  
#!/bin/bash -x 'Prints every command executed in the script'
#!/bin/bash -r  '-r creates a restricted bash shell, which restricts certain potentially dangerous commands that could, for example, navigate to certain directories, change sensitive environment variables,'

# Variables in bash
myvar="hello world"
echo "${myvar}"

root_directory=$(ls -ld /)
echo "${root_directory}"

unset myvar # Unassign variable

# ------------------------------
# Control Operators
& # Sends a command to the background.
&& # Used as a logical AND. The second command in the expression will be evaluated only if the first command evaluates to true.
(and) # Used for command grouping.
; # Used as a list terminator. A command following the terminator will run after the preceding command has finished, regardless of whether it evaluates to true or not.
;; # Ends a case statement.
| # Redirects the output of a command as input to another command.
|| # Used as a logical OR. The second command will run if the first one evaluates to false

# Control Operator Examples:
sleep 10 & # Send the sleep command to the background
touch test && touch test123 # The && operator allows us to perform an AND operation between two commands
(ls; ps) # The () operator allows us to group commands so they act a single unit when we need to redirect them together
ls; ps; whoami # The ; operator allows us to run multiple commands regardless of their exit status
lzl || echo "the lzl command failed" # The || operator allows us to chain commands together using an OR operation
# -------------------------------

# -------------------------------
# Redirection Operators
> # Redirects stdout to a file
>> # Redirects stdout to a file by appending it to the existing content
&> or >& # Redirects stdout and stderr to a file
&>> # Redirects stdout and stderr to a file by appending them to the existing content
< # Redirects input to a commands
| # Redirects output of a command as input to another command
<<EOF
This is a heredoc example.
It can span multiple lines.
EOF

# Redirection Operator Examples
echo "Hello World!" > output.txt # We redirect the standard output stream to a file named output.txt
echo "Goodbye :)" >> output.txt # Appending standard output stream to file named output.txt
ls -l / &> stderr_and_stdout.txt # Redirect both the standard output stream and the standard error stream to a file. Nothing will output to the terminal
ls -l / 1> stdout.txt 2> stderr.txt # Sending stdout and stderr to two different files
cat < output.txt  # Supply the contents of output.txt as input to the cat command.
ls -l / | grep "bin" # The pipe operator (|) redirects the output of one command and uses it as the input of another
# -------------------------------




