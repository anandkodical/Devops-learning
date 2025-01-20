GOAL : 

=> Take inpot from employees_list.txt and check whether user already exist in server and password already set or not. 
If present print the entry from password and shadow file. 
=> If user present and password is not set, ask for user confirmation to set password.
=> If user is not present in the server, will add user and set password and add the user to mentioned group

#!/bin/bash
hos=$(hostname)
#for i in "anand" "ak1" "ank1"
for i in $(cat employees_list.txt)
do
col=$(getent passwd $i|wc -l)
if [[ $col -eq 1 ]]
then
echo "User $i already exsists in server $hos"
getent passwd $i
coc=$(getent shadow $i|cut -d ":" -f2|wc -c)
if [[ $coc -gt 3 ]]
then
echo "Password already set for user $i"
getent shadow $i
chage -l $i
else
echo "Passord not set for user $i"
getent shadow $i
echo "Enter 'yes' to set password"
read opt
if [[ $opt == "yes" ]]
then
echo "User confirmed to set password for user $i"
echo "Enter the password to be set"
read -s pas
echo $pas|passwd $i --stdin
echo "Below are entry post setting password for user $i"
getent shadow $i
else
echo "User not confirmed to set password for user $i"
fi
fi
else
echo "User $i doesn't exsists in server $hos"
useradd $i
echo $i | passwd $i --stdin
echo "Enter the groupname"
read grp
usermod -G $grp $i
echo "Below are groups where user $i present"
groups $i
fi
echo "============================================="
done

