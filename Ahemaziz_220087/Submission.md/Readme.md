# Bandit Steps
<h3> Level 0 - 1 : </h3> Just use cat command to read the readme file and note the password.

<h3>Level 1 - 2 :</h3>  Use cat < -filename to access dashed file i.e hidden file

<h3>Level 2 - 3 :</h3>  Use ' ' or " " to read file called space in this filename
	      Also can use \ before spaces 

<h3>Level 3 - 4 :</h3>  Use ls -la command to access hidden files and then use cat command to read it.

<h3>Level 4 - 5 :</h3>  Use file command to check the filetype and can also use file ./* to check 		     filetypes of all files and the only readable file would be the ASCII text  

<h3>Level 5 - 6 :</h3>    Use - . - type f to look only for files and find . -readable to check if its 	 	readable and find . - ! -executable to check if its not executable and lastly 			find . -size 1033c to check if its size is 1033 
		command used : find . -type f -readable ! -executable -size 1033c
		
<h3>Level 6 - 7 :</h3>  Use find . -size 33c -user bandit7 -group bandit6    command


<h3>Level 7 - 8 :</h3>  Use grep command to find millionth in data.txt using command cat data.txt | grep millionth

<h3>Level 8 - 9 :</h3>  Use sort comand to sort the lines and then use uniq -u using pipe to display the unique line
	      so use sort data.txt | uniq -u
	      
<h3>Level 9 - 10 :</h3>   use command strings data.txt to convert it to string (human readable ) form then use grep -E "=+"    so use   strings data.txt | grep -E "=+"

<h3>Level 10 - 11 :</h3>  use cat data.txt | base64 --decode to decode the encoded code 

<h3>Level 11 - 12 :</h3>  use cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'

<h3>Level 12 - 13 :</h3>  Used xxd command to make hexdump

<h3>Level 13 - 14 :</h3>  use ssh -i sshkey.private bandit14@localhost to enter into bandit14 and then use cat in /etc/bandit_pass/bandit14.

<h3>Level 14 - 15 :</h3> use nc localhost 30000