Level 0
command1:- ssh bandit0@bandit.labs.overthewire.org -p 2220
password:- bandit0
command2:- ls
command3:- cat readme
password for level 1:- NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL

Level 1
command1:- ls
command2:- pwd
then cpoied path 
command3:- cat   /home/bandit1/-
password for level 2:- rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi

level 2
cmd1:- ls
cmd2:- cat "spaces in this filename"
password for level 3:- aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG

level 3
cmd1:- ls -a
cmd2:- cd inhere
cmd3:- ls -a
cmd4;- cat .hidden
password for level 4:- 2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe

level 4
bandit4@bandit:~$ ls
inhere
bandit4@bandit:~$ cd inhere
bandit4@bandit:~/inhere$ ls
-file00  -file01  -file02  -file03  -file04  -file05  -file06  -file07  -file08  -file09
bandit4@bandit:~/inhere$ pwd
/home/bandit4/inhere
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file*
/home/bandit4/inhere/-file00: data
/home/bandit4/inhere/-file01: data
/home/bandit4/inhere/-file02: data
/home/bandit4/inhere/-file03: data
/home/bandit4/inhere/-file04: data
/home/bandit4/inhere/-file05: data
/home/bandit4/inhere/-file06: data
/home/bandit4/inhere/-file07: ASCII text
/home/bandit4/inhere/-file08: data
/home/bandit4/inhere/-file09: Non-ISO extended-ASCII text, with no line terminators
bandit4@bandit:~/inhere$ cat /home/bandit4/inhere/-file07
lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR


level 5
bandit5@bandit:~$ ls
inhere
bandit5@bandit:~$ cd inhere
bandit5@bandit:~/inhere$ ls
maybehere00  maybehere02  maybehere04  maybehere06  maybehere08  maybehere10  maybehere12  maybehere14  maybehere16  maybehere18
maybehere01  maybehere03  maybehere05  maybehere07  maybehere09  maybehere11  maybehere13  maybehere15  maybehere17  maybehere19
bandit5@bandit:~/inhere$ find ./ -size 1033c
./maybehere07/.file2
bandit5@bandit:~/inhere$ cat ./maybehere07/.file2
P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU


level 6
cmd 1:- find / -user bandit7 -group bandit6 -size 33c
then copied the path of password file
cmd 2;- cat /var/lib/dpkg/info/bandit7.password
password for level 7 :- z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S

level 7
bandit7@bandit:~$ ls
data.txt
bandit7@bandit:~$ cat data.txt | grep 'millionth'
millionth	TESKZC0XvTetK0S9xNwm25STk5iWrBvP

level 8
bandit8@bandit:~$ ls
data.txt
bandit8@bandit:~$ sort data.txt | uniq -u
EN632PlfYiZbn3PhVK3XOGSlNInNE00t


level 9
bandit9@bandit:~$ ls
data.txt
bandit9@bandit:~$ strings data.txt | grep '='
4========== the#
5P=GnFE
========== password
'DN9=5
========== is
$Z=_
=TU%
=^,T,?
W=y 
q=W 
X=K,
========== G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
&S=(
nd?=

level 10
bandit10@bandit:~$ ls
data.txt
bandit10@bandit:~$ base64 -d data.txt
The password is 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM


level 11
bandit11@bandit:~$ ls
data.txt
bandit11@bandit:~$ cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
The password is JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv

level 12
