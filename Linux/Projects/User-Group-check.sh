#!/bin/bash
echo "Enter the name"
read p
col=$(getent passwd $p|wc -l)
cog=$(getent group $p |wc -l)
if [[ $col -eq 1 ]] && [[ $cog -eq 1 ]]
then
echo "Enered name is user  and name of user is $p"
getent passwd $p
chage -l $p
elif [[ $col -eq 0 ]] && [[ $cog -eq 1 ]]
then
echo "Entered name is group $p"
getent group $p
elif [[ $col -eq 0 ]] && [[ $cog -eq 0 ]]
then
echo "Entered name is not user nor group"
fi
ggjgjgjg
