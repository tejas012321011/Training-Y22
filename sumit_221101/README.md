level 0 :
 # type the command in your terminal
ssh bandit0@bandit.labs.overthewire.org -p 2220
# after entering on game server enter the password 
bandit0
# now you are on bandit0@bandit:~$  
level 0-->1:
# type cmd ls 
# you see that there is a file readme type cmd cat readme
# you will password for next level type cmd exit

level 1-->2:
# after entering in this level by using above password on server of bandit1@bandit by usind cmd ls you find there is file with name "-" type cmd cat <- for read this file you will got your password for level 2

level 2-->3:
# there is file in this server with name spaces in this filename 
# type cmd cat "spaces in this filename" for reading/printing this file data you get password for next level


level 3-->4
# in this level paswword is in a hidden file in the inhere directory first use cmd cd inhere on you are in inhere directory now use cmd 
cat .hidden  
# this print the hidden file 

level 4-->5
# in this level there is a directory name inhere in which there are 10 files for knowing what type of data file contain use cmd 
file inhere/* 
# you get to know there is file with ASCII text print that file you will know password for next level

level 5-->6
P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU
# in this level you find a directory inhere in there are 20 more directory we have find a file which is of size 1033 byte and human readable we use cmd 
find -size 1033c 
# we get the only file which of size 1033 byte in cmd c is used for represent byte 

level 6-->7
z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S
# in this level find a file which is owned by user bandit7 and owned by group bandit6 and 33 bytes in size for this we use cmd
 find / -size 33c -user bandit7 -group bandit6
 # now i am think why to use the shels (/) above the find  this because by use of/ we are giving the path for the directory  where to find  if we didnot use / there find cmd will run in current directory 

 level 7-->8
TESKZC0XvTetK0S9xNwm25STk5iWrBvP
# there is data.txt file in level we have to find the millionth word of file we use the cmd 
grep milliont data.text 
# this will print the millionth word in the file 

level 8-->9 
EN632PlfYiZbn3PhVK3XOGSlNInNE00t
# there is  file data.txt and  password is the only line of text that occurs only once we use cmd 
sort data.txt | uniq -u

level 9-->10
EN632PlfYiZbn3PhVK3XOGSlNInNE00t

strings data.txt | grep ==

level 10-->11
========== G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s

ls
cat data.txt
cat data.txt | base64 --decode

level 11-->12

ls
cat data.txt
 cat data.txt | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'


