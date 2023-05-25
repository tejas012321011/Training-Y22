                       AUV Assignment
                        Bandit game

1.Level 0
ssh bandit0@bandit.labs.overthewire.org -p 2220
password- bandit0

2. Level 0 -> 1
command used :-
ls readme
cat readme
NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL
uses :-
ls- It lists file in the current directory.
cat - prints the content of the given file in output stream/

3. Level 1-> 2
 Command used :-
 cat ./-
rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi
uses :-
./- is the command for the file called - and cat outputs the password in the given file.

4. Level 2 -> 3
Command used :-
cat spaces\ in\ this\ filename
aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG
Uses :-
\ is used in command for the file which have spaces in their name. 

5. Level 3 -> 4
Command used :-
cd inhere
ls -a
cat .hidden
2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe
Uses :-
cd - used to move inside the file 
ls -a is used to list all the contents in the given file
.hidden is used for the hidden file
 
6. Level 4 -> 5
Command used :-
cd inhere
file ./-*
cat ./-file07
lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
Uses :-
file ./-* will pick up  all files which starts from - and it will print the file format of the file and we want human readable file and it will show ascii text for file 07.

7. Level 5 -> 6
Command used :-
cd inhere
ls -a
find -size 1033c
cat ./maybehere07/.file2
P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU
Uses :-
find is used to find the file with given characteristics such as size in this level.

8. Level 6 -> 7
Command used :-
find / -user bandit7 -group bandit6 -size 33c
cat /var/lib/dpkg/info/bandit7.password
z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S

9. Level 7 -> 8
Command used :-
cat data.txt | grep millionth
TESKZC0XvTetK0S9xNwm25STk5iWrBvP
Uses :-
| uses the result of the left side and perform the right side task after that using previous output.
grep- used for searching characters, words etc. 

10. Level 8 -> 9
Command used :-
sort data.txt | uniq -u
EN632PlfYiZbn3PhVK3XOGSlNInNE00t
Uses :-
uniq - it is used for identifying repeated lines.
-u - used for printing unique line.
11. Level 9 -> 10
Command used :-
sort data.txt | strings | grep \=
G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
Uses :-
strings- used to return string characters in file.

12. Level 10 -> 11
Command used :-
sort data.txt | base64 -d
6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM
Uses :-
base64 -d used to decode the password stored in base64.

13. Level 11 -> 12
Command used :-
cat data.txt | tr a-zA-Z n-za-mN-ZA-M
JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv
Uses :-
tr is used for deleting translating characters, uppercase, lowercase.
In this level we will replace every letter by the 13 letter ahead.


