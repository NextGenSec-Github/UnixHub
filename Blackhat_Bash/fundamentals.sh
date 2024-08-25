# Fundamental Commands
bash --version # Version of bash shell
env # List environment variables
echo ${SHELL} # Output env variables. Other envars include BASH_VERSION, BASHPID, GROUPS, HOSTNAME, OSTYPE, PWD, RANDOM, UID, SHELL

# Bash Fundamentals
# Every script should begin with the shebang line. The bash interpreter is typically located at /bin/bash. If youinstead wrote scripts in Python or Ruby, your shebang line would include the full path to the Python or Ruby interpreter
#!/bin/bash  
#!/bin/bash -x 'Prints every command executed in the script'
#!/bin/bash -r  '-r creates a restricted bash shell, which restricts certain potentially dangerous commands that could, for example, navigate to certain directories, change sensitive environment variables,'







