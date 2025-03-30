#!/bin/bash 
echo "Enter the Groupname" 
read gp 
for ((i=1;i<=10;i++)) 
do 
usr="da$i" 
gc=$(grep "$gp" /etc/group|wc -1) 
if [[ $gc-gt 0]] 
then 
gnc=$(grep "$gp" /etc/passwd|wc -1) 
if [[ $gnc -eq 0 ]] 
then 
echo "Group $gp is present in server" 
usc=$ (getent passwd $usr wc -1) 
if [[ $usc -gt 0 ]] 
then 
echo "User Şusr is present in server" 
echo "Enter y or yes or YES to add user to group" 
read usconf 
if [[ Şusconf == "yes" ]] || [[ Susconf == "YES" ]] 
then 
usermod -G $gp $usr 
echo "Below are Groups user Şusr is part of it" 
groups $usr 
fi
else 
useradd Şusr 
usc=$ (getent passwd $usr wc -1) 
if [[ $usc -gt 0]] 
then 
echo "User Şusr is present in server" 
echo "Enter y or yes or YES to add user to group" 
read usconf 
if [[ $usconf == "yes" )) || (( $usconf == "YES" ]] 
then 
usermod -G $gp $usr 
echo "Below are Groups user Şusr is part of it" 
groups $usr 
fi 
fi 
fi 
fi 
else 
groupadd $gp 
gc=$(grep "$gp" /etc/group/wc-1) 
if [[ $gc-gt 0]] 
then 
gnc=$ (grep "$gp" /etc/passwd|wc-1) 
if [[ $gnc -eq 0 ]] 
then 
echo "Group $gp is present in server"
usc=$ (getent passwd $usr wc -1) 
if [[ $usc -gt 0]] 
then 
echo "User Şusr is present in server" 
echo "Enter y or yes or YES to add user to group" 
read usconf 
if [[ Şusconf == "yes" )) || (([ $usconf == "YES" ]] 
then 
usermod -G $gp $usr 
echo "Below are Groups user Şusr is part of it" 
groups $usr 
fi 
else 
useradd Şusr 
usc=$ (getent passwd $usr wc-1) 
if [[ $usc-gt 0 ]] 
then 
echo "User Şusr iis present in server" 
echo "Enter y or yes or YES to add user to group" 
read usconf 
if [[ $usconf == "yes" )) || ([ $usconf == "YES" ]] 
then 
usermod -G $gp Şusr 
echo "Below are Groups user Şusr is part of it" 
groups Şusr 
fi 
fi 
fi 
fi
fi
fi
done
