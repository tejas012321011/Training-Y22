<h2>Assignment 1 Vishap Raj 221208</h2>
Firstly connecting to host by  ssh bandit0@bandit.labs.overthewire.org -p 2220
Then start the game<br>
Level 1:-Firstly,for login to level0 password was bandit0,then use ls command to check if the readme file is there or not then cat command to get password as the content of level1 and password was NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL.<br>
then use exit to logout level 0.<br>
Level 2:-login to level 2by above password , then use cat < - to open dashed file whose password was rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi<br>
then use exit to logout level 1<br>
Level 3:- for spaces in filename use \ just after every word of file name, and the password was aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG<br>
then exit command to logout level 2<br>
Level 4:-we can see hidden files content by ls -a command and password was 2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe<br>
exit command to logout level 3<br>
Level 5:-To check Human readable file we use file . / - * and the password was  lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR<br>
exit command to logout level 4<br>
Level 6:-For Human Readable files with non executable and 1033 bytes,we can find password of level 7 by find . -type........and the password was P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU<br>
exit command to logout level 5<br>
Level 7:-again use find -size 33c -user bandit7 -group bandit6 .....to get z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S<br>
exit command to logout level 6<br>
Level 8:-By searching we'll get password TESKZC0XvTetK0S9xNwm25STk5iWrBvP in "millionth" by using grep command<br>
exit command to logout level 7<br>
Level9:-firstly sort then find line which occurs only once by sort/home/bandit8/data.txt....we get password EN632PlfYiZbn3PhVK3XOGSlNInNE00t<br>
exit command to logout level 8<br>
*Level 10:-we get password G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s by using strings data.txt |grep "="<br>
exit command to logout level 9<br>
Level 11:-use base64 -decode to get password 6zPeziLdR2RKNdNYFNb6nVCKzphlXHBM<br>
exit command to logout level 10
 