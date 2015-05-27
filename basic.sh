#
# basic grep commands for demo
#
cd book1

printf "\n ***** Demo: exact match. \n"
grep "Queen" *.txt

printf "\n ***** Demo: case insensive match. \n"
grep  -i "Queen" *.txt

printf "\n ***** Demo: word match. \n"
grep  -iw "Queen" *.txt

printf "\n ***** Demo: print line number. \n"
grep  -iwn "Queen" *.txt

printf "\n ***** Demo: print match position. \n"
grep  -iwn -b "Queen" *.txt

printf "\n ***** Demo: print match words only. \n"
grep  -iwno -o "Queen" *.txt

printf "\n ***** Demo: count of matches. \n"
grep  -c "King" *.txt
grep  -ci "Queen" *.txt
grep  -c "NOMATCH" *.txt

printf "\n ***** Demo: print lines after match \n"
grep  -A1 -iwn "first" *.txt

printf "\n ***** Demo: print lines before match \n"
grep  -B1 -iwn "first" *.txt

printf "\n ***** Demo: print lines around match \n"
grep  -C1 -iwn "first" *.txt

printf "\n ***** Demo: inverse match \n"
grep  -c -v -iw "king" *.txt #num of lines without word king
grep  -c -iw "king" *.txt #num of lines with word king

printf "\n ***** Demo: regex match \n"
grep -i "first.*line" *.txt
grep -i "^Author:.*" *.txt
grep -i "^Chapter:.*" *.txt 
grep -i ".*[0-9]rd.*" *.txt #matches word like 3rd

printf "\n\n"