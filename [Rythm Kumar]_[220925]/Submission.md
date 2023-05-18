SOFTWARE SUBSYSTEM ASSIGNMENT

Over the wire bandit

Level 0 – We have to just connect to site bandit.labs.overthewire.org  
using ssh bandit0@bandit.labs.overthewire.org -p 2220 
enter password bandit0 

Level 0-1 – Use ls to see the files present. Use cat to read the password in the file. Now we login to the next level using 
ssh bandit1@localhost and then enter the password

Level 1-2 – use ls to see the files. You cannot directly cat filename to see the dashed file. Use the ./ prepend it to – file name to view the content of the file, . represents current terminal directory and / indicates the name of the file .
Now after getting the password use it to get to the ssh connection to bandit 2 . ssh bandit2@localhost and then enter the password

Level 2-3 – use ls to see the files. You cannot directly cat filename to see the file name with spaces . We will put the file name inside single quotes ‘ ‘ . and then try to read it .  Now after getting the password use it to get to the ssh connection to bandit 3 . ssh bandit3@localhost and then enter the password

Level 3-4 – We are informed that the file is in the inhere directory. We will traverse to the given directory using  cd inhere/ . 
Then use ls -al command  to view all the files including the hidden ones, .hidden file is present, then use cat .hidden to read the password.
Now after getting the password use it to get to the ssh connection to bandit 4 . ssh bandit4@localhost and then enter the password

Level 4-5 – We know that the file is in human readable form in the inhere directory. Use cd inhere/ then file ./*  to know the type of data in each file. -file07 is the only human readable form . 
Use cat ./-file07 to get the password 
Now after getting the password use it to get to the ssh connection to bandit 5 . ssh bandit5@localhost and then enter the password.

Level 5-6 – The password file is in the inhere directory where file size is 1033 bytes we use find . -size 1033c .
Now use cat to get the password . Now after getting the password use it to get to the ssh connection to bandit 6 . ssh bandit6@localhost and then enter the password.

Level 6-7 – The password is in on the server with the user bandit7 group bandit6 and size 33 byte . We will use
 find / -user bandit7 -group bandit6 -size 33c 
We get the file and use cat to get the password . use it to get to the ssh connection to bandit 7. ssh bandit7@localhost

Level 7-8 – The password of the next level is stored in the file next to the ‘millionth’ word . We will use cat data.txt | grep ‘millionth’ . ‘|’ is used for piping as the output of the first command as the input of the second command and grep is used to find with the given text

Level 8-9 – The password of the next level is stored in the file which is the only unique line . use cat data.txt | sort | uniq -u

Level 9-10 – The password of the next level is stored in the file data.txt in human readable string format having  = . 
We will use strings data.txt | grep “=” .

Level 10-11 – The password is stored in data.txt file encoded in base64
We will use cat data.txt | base64 --decode  to decode the base 64 file  

Level 11-12 – The password in the file is rotated by 13 places so we will use the tr command to rotate the password by 13 places 
cat data.txt | tr a-zA-Z n-za-mN-ZA-M .

Level 12-13 – The password is stored in a file that is repeatedly compressed . As mentioned in the question we will have to make a tmp/myname directory and copy the file and decompress the file to get the password .  
mkdir /tmp/rythm 
cp data.txt /tmp/rythm
The file type is ASCII but it is not in readable form so it is hexdecimal file we will use xxd -r data.txt data1 . file data1 
The file is gzip compressed . Rename the file and then decompress it mv data1 data2.gz   .   gzip -d data2.gz.    file data2 
The file data 2 is bzip2 compressed . We will again rename the file with mv data2 data2.bz2 
Decompress it with bzip2 -d data2.bz2 . We will use the tar command with xvf to get the archived file. 
This continues till we get the fully decompressed file . 

Level 13-14 – The password is not provided instead a private key for ssh connection is provided we will use ls to get the key 
Then ssh bandit14@localhost -i sshkey.private

Level 14-15 – The password for the next level can be accessed by submitting the password for the current level to port no 30000
We will first get access to the current password
 cat /etc/bandit_pass/bandit14 
now use telnet localhost 30000 and enter the current password 
now we got the new password.
Now get the ssh connection to bandit 15 

Level 15-16 – The password for the next level can be accessed by submitting the current password to the port no 30001 using ssl encryption 
We will use command openssl s_client -connect localhost:30001 
-ign_eof . s_client is used to  tell we are connecting to the client on the localhost port 30001.
Submit the current password and get the new password to get ssh connection for bandit 16


