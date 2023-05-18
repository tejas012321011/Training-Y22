Level 0: ssh bandit0@bandit.labs.overthewire.org -p 2220
Level 0 to 1: cat readme
Level 1 to 2: cat < -
Level 2 to 3: cat "spaces in this filename"
Level 3 to 4: cd inhere 
              ls -a
              cat ".hidden"
Level 4 to 5: file inhere/*
              cd inhere
              cat < -file07
Level 5 to 6: cd inhere
              ls
              find . -size 1033c ! -executable
              cd maybehere07
              cat ".file2"
Level 6 to 7: find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
              cat /var/lib/dpkg/info/bandit7.password
Level 7 to 8: grep millionth data.txt
Level 8 to 9: sort data.txt | uniq -u
Level 9 to 10: strings data.txt | grep ======
Level 10 to 11: base64 data.txt -d
Level 11 to 12: cat data.txt | tr [a-zA-Z] [n-za-mN-ZA-M]
Level 12 to 13: mkdir /tmp/direc
                cp data.txt /tmp/direc
                cd /tmp/direc
                mv data.txt new
                xxd -r new new1
                file new1
                mv new1 new1.gz
                gzip -d new1.gz
                file new1
                mv new1 new2.bz2
                bzip2 -d new2.bz2
                file new2
                mv new2 new3.gz
                gzip -d new3.gz
                file new3
                mv new3 new4.tar
                tar -xf new4.tar
                ls
                file data5.bin
                mv data5.bin new5.tar
                tar -xf new5.tar
                ls
                file data6.bin
                mv data6.bin new6.bz2
                bzip2 -d new6.bz2
                file new6
                mv new6 new7.tar
                tar -xf new7.tar
                ls
                file data8.bin
                mv data8.bin new8.gz
                gzip -d new8.gz
                file new8
                cat new8
Level 13 to 14: ssh -i sshkey.private bandit14@localhost -p 2220
Level 14 to 15: cat /etc/bandit_pass/bandit14
                nc localhost 30000
                
                
              