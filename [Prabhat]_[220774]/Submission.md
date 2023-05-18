LEVEL 0->1:
      step1-ls (to see file and directory content)
      step2-cat readme (to see content of file readme,where password is written)

LEVEL 1->2:
      step1-ls
      step2-cat ./- (as per syntax)

LEVEL 2->3:
      step1-ls
      step2-cat "spaces in this filename"

LEVEL 3->4:
      step1-ls
      step2-cd inhere (cd is used to change directory)
      step3-ls -al (-al  display all files and subdirectories in the current directory, including hidden “.” And “..” etc.)
      step4-cat .hidden (password written in this file)

LEVEL 4->5:
      step1-ls
      step2-cd inhere 
      step3-ls -al
      step4-file ./-* (it will give file type of each file)
      step5-cat ./-file07 (it was file with ASCII text)

LEVEL 5->6:
      step1-ls
      step2-cd inhere
      step3-find -size 1033c -type f (to check for file size and its executability)
      step4- cat ./maybehere07/.file2 (required file with given constrants)

LEVEL 6->7:
      step1-find / -user bandit7 -group bandit6 -size 33c 2>/dev/null

LEVEL 7->8:
      step1-ls 
      step2-cat data.txt | grep "millionth" (grep gives the all complete lines in which the given pattern is observed, here our password was next to this word)

LEVEL 8->9:
      step1-ls
      step2-cat data.txt | sort | uniq -u (sort will first sort all the lines, then uniq will onluy print unique lines after checking adjacent lines)

LEVEL 9->10:
      step1-ls
      step2-strings data.txt | grep "="

LEVEL 10->11:
      step1-ls
      step2-cat data.txt | base64 --decode (data will be decoded to standard output and printed)

LEVEL 11->12:
      step1-ls
      step2-cat data.txt |  tr '[A-Za-z]' '[N-ZA-Mn-za-m]' (tr used for translation or deletion, here tr translate,i.e.,it rotates letter by 13 places)
      
      