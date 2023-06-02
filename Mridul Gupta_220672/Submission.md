# Bandit Game

This is my solution to the first 15 levels of the bandit game by over the wire .  

## Level 0

**Password:** bandit0   

Connected to bandit using command  
```
ssh bandit0@bandit.labs.overthewire.org -p 2220
```

&nbsp;
## Level 0 -> 1

**Password:** boJ9jbbUNNfktd78OOpsqOltutMc3MY1   

Get password using  
```
cat readme
```

&nbsp;
## Level 1 -> 2

**Password:** CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9  

Got password using  
```
cat -- -
```

&nbsp;
## Level 2 -> 3

**Password:** UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK  

Got password using  
```
cat spaces\ in\ this\ filename
```

&nbsp;
## Level 3 -> 4

**Password:** pIwrPrtPN36QITSp3EQaw936yaFoFgAB   
Got password using  
```
ls
cd inhere
ls -a
cat .hidden
```

&nbsp;
## Level 4 -> 5

**Password:** koReBOKuIDDepwhWk7jZC0RTdopnAYKh  


Identity the required file using these commands  
```
ls
cd inhere
ls -a
file -- -*
```

Now the file07 has ASCII text format which is human readable. So, this must contain the password  
```
cat -- -file07
```

&nbsp;
## Level 5 -> 6

**Password:** DXjZPULLxYr17uwoI01bNLQbtFemEgo7  

Get password using  
```
ls
cd inhere
ls -a
find -type f -size 1033c ! -executable
cat ./maybehere07/.file2
```
   


&nbsp;
## Level 6 -> 7

**Password:** HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs  

Got password using  
```
find / -user bandit7 -group bandit6 -size 33c
cat /var/lib/dpkg/info/bandit7.password
```

&nbsp;
## Level 7 -> 8

**Password:** cvX2JJa4CFALtqS87jk27qwqGhBM9plV  

Got password using  
```
ls -a
strings data.txt | grep millionth
```

&nbsp;
## Level 8 -> 9

**Password:** UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR  

Got password using  
```
ls -a
cat data.txt | sort | uniq -u
```

    

&nbsp;
## Level 9 -> 10

**Password:** truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk  

Got password using
```  
ls -a
strings data.txt | grep "="
```

&nbsp;
## Level 10 -> 11

**Password:** IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR  

Got password using  
```
ls -a  
base64 -d data.txt
```

&nbsp;
## Level 11 -> 12

**Password:** 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu  

Got password using 
``` 
ls -a  
cat data.txt | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
```

&nbsp;
## Level 12 -> 13

**Password:** 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu  

Got password using  
```
ls -a
mkdir hello
cp data.txt > hello
cd hello
xxd -r data.txt > data1
file data1
mv data1 data1.gz
gzip -d data1.gz > data2
ls
file data2
mv data2 > data2.bz2
bzip2 -d data2.bz2
file data2
```

Repeat the above steps to get the ASCII text file which contains the password  

&nbsp;
## Level 13 -> 14

**Password:** 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e  

To login into bandit user 14, run the following command.  
```
ls
ssh -i sshkey.private bandit14@localhost
```

Once logged into bandit14, get password from /etc/bandit_pass/bandit14 using cat command.  

&nbsp;
## Level 14 -> 15

**Password:** BfMYroe26WYalil77FoDi9qh59eK5xNr  

Being logged in as user bandit14 on localhost, run the command   
```
telnet localhost 30000
```

Then enter the password got at previous level and it will display the password for next level  


&nbsp;
## Level 15 -> 16

**Password:** pIwrPrtPN36QITSp3EQaw936yaFoFgAB  

After logging into level 15, run the command   
```    
openssl s_client -ign_eof -connect localhost:30001
```

After that enter the password you got in the previous level to get the next password.  
