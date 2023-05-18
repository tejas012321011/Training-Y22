# AUV Software Assignment

Bandit game

**1.Level 1 :**

- ls : To list all the files .(Contains only 1 file readme)
- cat : cat readme to output the files content .

**2.Level 2 :** (File name starts with hyphen)

- cat ./- : the problem is we do not prefer name to start with - therefore cat - will not work as a replacement we use cat \<- or cat ./- .

**3.Level 3 :** (spaces in this file)

- cat spaces\ in\ this\ file or cat"file name" can be used .

**4.Level 4 :** (hidden file)

- cd inhere to go inside the directory
- ls -a to list all files
- cat ./.hidden to cat it.(address)

Or

- find to view all files .
- Then cat inhere/.hidden directly.

**5.Level 5 :** (file with human readable form)

- Manual check(cat each file)

**6.Level 6 :** (size 1033 bytes)

- find -size 1033c where c is for bytes ,searches for specified size file name, then used cat.

**7.Level 7 :** (owned by bandit 7 and group bandit 6)

- cd / to go to root directory
- find -group bandit7 -group bandit6 -size 33c.

**8.Level 8 :** (password next to millionth word)

- grep "millionth" filename used to search(print) all the lines in a file having the specified word.

**9.Level 9 :** (unique line)

- sort filename to sort it alpha-numerically prerequisite for uniq
- uniq -u to find unique line
- sort data.txt | uniq -u . | is used for using output from 1st command as input

**10.Level 10 :** (human readable and several "=")

- strings data.txt | grep "====="

Strings command prints all strings then grep "====" selects only lines which contains ====.

**11.Level 11 :** (base64 encoded data)

- base64 -d filename to decode the encoded data into raw data.

**12.Level 12 :** (ROT13)

- cat data.txt | tr [a-zA-Z] [n-za-mN-ZA-M]

Tr is used to translate or map the first bracket with second bracket

**13.Level 13:** (Hex Dump)

- mkdir /tmp/filename to create a directory
- cp data.txt /tmp/filename to copy it
- mv to move it to another file
- Xxd -r to decompress it to another file
- File to know decomposed file type
- If zip use .gz to save it and zip -d to decompress it
- If bzip2 use .bz2 to save it and bzip -d to decompress it
- It tar use .tar and tar -xf .

Varun Mahajan

(221173)