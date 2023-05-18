Connecting to host( by ssh)
bandit2@bandit.labs.overthewire.org  –p 2220
replace 2 with the current level

Level 1
Just read the readme file in the home folder by using cat command
Password-NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL

Level 2 dashed filename
opening dashed file use cat < - or cat./-
Directly used then it will understand stdin
rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi

Level 3 spaces in filename
Space ayegi to different file manega
Use escape sequence \space
Like\ this
aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG

Level 4 hidden files
Hidden files can be viewed by the ls –a command 
We can directly open them by the cat command
2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe

Level 5 human readable files
Password- lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
ASCII text is human readable
Or we can write file./-*
use file or inhere command

Level 6 human readable,non executable,1033 bytes in size
du –a –b command prints size of all files in subdirectories in bytes
We can check human readability by file command
Non executability by colour
P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU

Level 7
find -size 33c -user bandit7 -group bandit6
Find / ... /poora server batata hai
z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S

Level 8 searching in a file
grep "millionth" /home/bandit7/data.txt
TESKZC0XvTetK0S9xNwm25STk5iWrBvP
Cat data.txt | grep “millionth”

Level 9 find the line that occurs only once
sort /home/bandit8/data.txt |uniz -u
EN632PlfYiZbn3PhVK3XOGSlNInNE00t

Level 10  
A data file
G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s

Level 11 base 64
base64 --decode /home/bandit10/data.txt
6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM

Level 12 Rotate by 13 places
tr 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' 'nopqrstuvwxyzabcdefghijklmNOPQRSTUVWXYZABCDEFGHIJKLM' </home/bandit11/data.txt
JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv

Level 13 hexdump
First un-hexdump the file
then repetedly un-zip by seeing the filetype using file command
wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw

Level 14 Private Key
First copy the private key to your local machine
Then ssh –i sshkey.private bandit14@bandit.labs.overthewire.org –p 2220
Password is fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq

Level 15
jN2kgmIXJ6fShzhT2avhotn4Zcka6tnt
Using nc command 
nc localhost 30000
then type level 14 password.


