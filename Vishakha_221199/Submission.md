NOTE: $ precedes all commands below and everything else is documentation

Lvl 0: 
using ssh(secure shell) to make connection with port 2220 of bandit server
It is a protocol used to securely connect to a remote server/system.

$ ssh bandit0@bandit.labs.overthewire.org -p 2220

$ cat readme

NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL

Lvl1:use ./ when file name starts with -, as - is used in giving attributes to commands

$ ssh bandit1@bandit.labs.overthewire.org -p 2220

$ cat ./-

rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi

Lvl2:We use quotes os slash when there are spaces in file name

$ ssh bandit2@bandit.labs.overthewire.org -p 2220

$ cat "spaces in this filename"

aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG

lvl3:

$ bandit3@bandit.labs.overthewire.org -p 2220

$ cd inhere

$ cat .hidden

2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe

Lvl4:
$ ssh bandit4@bandit.labs.overthewire.org -p 2220

$ file ./-file0*

$ cat ./-file07

lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR

Lvl5:

$ find -type f -size 1033c ! -executable

./maybehere07/.file2

$ cat ./maybehere07/.file2

P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU

Lvl 6:
Here first we go to parent directory and then apply the conditions of user,size and group in find command

$ cd /

$ find -user bandit7 -group bandit6 -size 33c

$ cat ./var/lib/dpkg/info/bandit7.password

z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S

Lvl7:
here we use grep command to find a string in file data.txt

$ grep "millionth" data.txt

millionth	TESKZC0XvTetK0S9xNwm25STk5iWrBvP

LvL 8:
Here, we use sort with uniq and -c that counts the no of unique occurences

$ sort data.txt | uniq -c

1 EN632PlfYiZbn3PhVK3XOGSlNInNE00t

Lvl 9:
 Here we use strings to print printable strings in data.txt and grep to print the one that have =

$ strings data.txt | grep "=

========== G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s

Lvl 10:
Using base64 decoding

$ base64 -d data.txt

The password is 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM

Lvl 11:
ROT13 which means substituting each letter by the 13th letter ahead eg: A to N, Bto O ansd so on
tr runs replacements based on single characters and character set

$ cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'

The password is JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv

LvL12:
Here we make a new dir to work in and use cp to copy the file
 xxd - make a hexdump or do the reverse. xxd -r[evert] [options] [infile [outfile]]
 in this lvl we extract the password by continuously decompressing the file from gzip,bzip2,tar format to ascii 
commands used: mv, ls,gzip,bzip2, tar xf, file

The password is wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw

Lvl 13:
In this lvl I keep on getting permission denied.
ssh bandit14@localhost -i sshkey.private
The authenticity of host 'localhost (127.0.0.1)' can't be established.
ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Could not create directory '/home/bandit13/.ssh' (Permission denied).
Failed to add the host to the list of known hosts (/home/bandit13/.ssh/known_hosts).

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

!!! You are trying to log into this SSH server on port 22, which is not intended.

bandit14@localhost: Permission denied (publickey).
