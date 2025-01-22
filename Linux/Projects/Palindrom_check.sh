#Bash script to check whether given string is palindrome or not

#!/bin/bash
echo "Enter the string"
read hu
revs=$(echo $hu|rev)
if [[ $hu == $revs ]]
then
echo "String $hu is palindrome"
else
echo "String $hu is not palindrome"
fi
