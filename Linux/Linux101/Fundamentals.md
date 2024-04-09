# Fundamentals

## Pipelines

A pipeline in Bash scripting allows you to connect the output of one command as the input to another command.
In Bash, a pipeline is represented by the | symbol. It takes the standard output (stdout) of the command on its left-hand side and uses it as the standard input (stdin) for the command on its right-hand side.
```bash
command1 | command2 | command3
```

Let's say you have a text file containing a list of names, and you want to count the number of lines (i.e., the number of names) in that file.
```bash
cat names.txt | wc -l
```
