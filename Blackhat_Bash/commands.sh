# Grep
grep "35.237.4.214" log.txt # Filtering for an IP in a log file
grep "35.237.4.214\|13.66.139.0" log.txt # \| acts as an OR operator
grep -e "35.237.4.214" -e "13.66.139.0" log.txt # -e also works as an OR
ps | grep TTY # List processes and grep the Terminal
ps | grep -i tty # -i insensitive case
grep -v "35.237.4.214" log.txt # Exclude lines with this pattern
grep -o "35.237.4.214" log.txt # Only match the pattern

# AWK: Identify and return specific fields from a file
awk '{print $1}' log.txt # The $1 represents the first field of every line in the file where the IP addresses are. By default, awk treats spaces or tabs as separators or delimiters.
awk '{print $1,$2,$3}' log.txt # Print additional fields
awk '{print $1,$NF}' log.txt # NF represents the last field
awk -F',' '{print $1}' example_csv.txt # -F defines the delimiter. In this case ',' due to our file being .csv
awk 'NR < 10' log.txt # Prints the first 10 lines of the file. NR represents the total number of records
grep "42.236.10.117" log.txt | awk '{print $7}' # For example, you might want to first find the lines in a file containing the IP address 42.236.10.117 and then print the HTTP paths requested by this IP

# sed: The sed (stream editor) command takes actions on text. For example, it can replace the text in a file, modify the text in a command’s output, and even delete selected lines from files.
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt # Replace all words "Mozilla" with "Gozilla"
sed 's/ //g' log.txt # Remove any whitespace from the file with the / // syntax, which will replace whitespace with nothing
sed '1d' log.txt # If you need to delete lines of a file, use the d command. In the following command, 1d deletes (d) the first line (1)
sed '$d' log.txt # Delete the last line of the file
sed '5,7d' log.txt # Delete lines 5 and 7
sed -n '2,15 p' log.txt # Print line range 2 to 15
sed -i '1d' log.txt # When you pass sed the -i argument, it will make the changes to the file itself rather than create a modified copy

# Job Control
sleep 100 & # Send this sleep command as a background job
ps -ef | grep sleep # verify this background job
jobs # List job running
fg %1 # Move the job to the foreground by specifying the job id
bg %1 # Send the job to the background again
nohup ./my_script.sh & # Make a scripts run even when we logout and run it in the background

# Bash Pentest Setup
echo $PATH # Bash searches for programs within directories defined by the PATH environment variable.
alias quicknmap="nmap -vv -T4 -p- -sV --max-retries 5 localhost" # aliases allow us to not have to remember long commands. NOTE: Aliases are not permanent but can be with the ~/.bashrc file
alias helloworld="bash ~/scripts/helloworld.sh" # You can even alias your own scripts!
source ~/.pentest # Import pentest command and scripts to a ~/. file and then import it to the bashrc with 'source'








