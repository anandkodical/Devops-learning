#!/bin/bash
for i in $(cat /var/userlist.txt)
do
usr_chk=$(getent passwd $i|wc -l)
pas_chk=$(getent shadow $i|cut -d ":" -f2|wc -c)
if [[ $usr_chk -gt 0 ]]
then
echo "User $i is already present. Below is the entry"
getent passwd $i
echo "Checking for password.."
if [[ $pas_chk -gt 3 ]]
then
echo "Password has already been set for the user $i"
getent shadow $i
echo "Below are the groups that user $i is part of"
groups $i
else
echo "Password is not set for the user. Type 'yes' to set new password"
read opt
if [[ $opt == "yes" ]]
then
echo "Enter the password to be set"
read -s pass
echo $pass | passwd $i --stdin
echo "Password has been set for the user $i"
getent shadow $i
echo "Below are the groups that user $i is part of"
groups $i
else
echo "User denied to set password for $i. Exiting"
fi
fi
else
echo "User $i is not present. Creating user.."
useradd $i
echo "User $i created. Enter the password to proceed"
read -s pas
echo $pas | passwd $i --stdin
echo "Password set for the user $i"
getent shadow $i
echo "Whether you wish to add user to the group. Type 'yes' to confirm"
read opt1
if [[ $opt1 == "yes" ]]
then
echo "Enter the group name"
read grp
usermod -a -G $grp $i
echo "User $i is added to the group $grp"
groups $i
else
echo "User is not opted to add user $i to group"
fi
echo "Below are the groups that user $i is part of"
groups $i
fi
echo "================================================"
done