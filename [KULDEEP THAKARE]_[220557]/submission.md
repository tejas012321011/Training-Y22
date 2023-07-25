step1) ssh bandit0@bandit.labs.overthewire.org -p 2220 
       here ssh command is used to login to the server.
       p1 = bandit0.
step2) cat readme-
       cat command is used to see the contents of the file readme.
       p2 = NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL
step3) cat <-
       < is used when file name starts with - as when we use cat - directly it takes us to the previous directory.
       p3 = rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi
step4) cat "spaces in this filename"
       here " " are used as there are spaces betweeen.
       p4 = aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG
step5) cd inhere - to go to inhere directory.
       ls -a - to list down hidden file names.
       cat . hidden - to see the contents of this file.
       p5 = 2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe
step6) cd inhere - to go to inhere directory.
       I manually checked the human readable files.
       file07 was desired one.
       p6 = lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
step7) find -size 1033c - tofind file of size 1033 bytes.
       p7 = P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU
step 8) find -user bandit7 -group bandit6 -size 1033c
step 9) grep "millionth" data.txt - to find password next to millionth word in the data text
        p9 = TESKZC0XvTetK0S9xNwm25STk5iWrBvP
step 10) sort data.txt | uiq -u - to sort unique occurance
        p10 = EN632PlfYiZbn3PhVK3XOGSlNInNE00t
step 11) strings data.txt | grep ==== - strings is used to list doen text and then grep to list strings with ====
        p11 = G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
step 12) base64 data.txt -d - to decode the password.
        The password is 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM
step 13) cat data.txt | tr '[a-z]' '[n-za-m]' | tr '[A-Z]' '[N-ZA-M]' - to tranform the leteres to pluss 13 tr is used 
        password - JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv