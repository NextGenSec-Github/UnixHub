# Bash Scripting Fundamentals
## Introduction to Bash Scripting
Bash (Bourne Again SHell) is a command-line interpreter and scripting language primarily used on Unix-based operating systems. Bash scripting allows users to automate tasks, write complex scripts, and interact with the operating system via command-line interfaces. This document covers the fundamentals of Bash scripting, including variables, control structures, functions, and practical examples.

## Getting Started

### Setting Up Your Environment
Ensure you have a Unix-based operating system with Bash installed. Most Linux distributions come with Bash pre-installed. You can also use macOS, which also includes Bash by default.

### 1. Creating Your First Bash Script
To create a Bash script, create a new file with a .sh extension and add the following line at the top:

```bash
#!/bin/bash
```
This line is called a shebang and tells the system to execute the script using the Bash interpreter.

### 2. Variables
Variables are used to store data in Bash scripts. Bash does not require variable declaration. Here's how to declare and use variables:
```bash
# Variable declaration
name="John"
age=30

# Accessing variables
echo "Name: $name"
echo "Age: $age"
```

### 3. Control Structures

#### If-Else Statements
If-else statements allow you to perform conditional execution based on certain conditions:
```bash
if [ "$age" -ge 18 ]; then
    echo "You are an adult."
else
    echo "You are a minor."
fi
```
















