<h2>Assignment#Submission Anshul Narwariya 220173_Mechanicalsubsystem.</h2>
<h3>Level 0</h3>
- To connect to the host I use "ssh bandit0@bandit.labs.overthewire.org -p 2220" command.<br>
- Password used to connect to host is "bandit0"(Given).<br>
- We logout using "exit command".
<h3>Level 0 to Level 1</h3>
- In this level our next password is saved in a file "readme".<br>
- First we use "ls" to find files.<br>
- Next we will use "cat readme" to open the file.<br>
<h3>Level 1 to Level 2</h3>
- In this level there is a file named. "-".<br>
- To open this type of file I use "cat ./-".<br>
<h3>Level 2 to Level 3</h3>
- In this level there is a file with spaces between its name.<br>
- To pen this we use "cat 'spaces in this filename'".<br>
<h3>Level 3 to Level 4 </h3>
- There is a hidden file in inhere directory.<br>
- we use "ls<br>
- cd inhere/<br>
- cat .hidden".<br>
<h3>Level 4 to Level 5</h3>
- Next password is a human readable file in inhere directory.<br>
- we use "file ./*" to check file type.<br>
- next we use cat ./-file07" to see password.<br>
<h3>Level 5 to Level 6</h3>
- In this level there are three conditions.<br>
- by using "Find . -size 1033c" we get our file.<br>
- To open it we use "cat./maybehere/.file2".<br>
<h3>Level 6 to Level 7</h3>
- In this we use "find / -user bandit7 -group bandit6 -size 33c".<br>
- to open file we use "cat" command.<br>
<h3>Level 7 to Level 8</h3>
- In this password is in data.txt with password start with millionth.<br>
- we use "cat data.txt | grep millionth".<br>
<h3>Level 8 to Level 9</h3>
- In this there is a unique line so we use uniq command.<br>
- we use "cat data.txt | sort | uniq -u".<br>
- in this we use "string data.txt | grep =".<br>
<h3>Level 9 to Level 10</h3>
-In this we use "strings data.txt | grep =".<br>