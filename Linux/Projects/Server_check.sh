GOAL : 
=> To check the range of IP address whether they able to connect to server and save the report in the separate file.

#!/bin/bash
#for i in "192.168.209.139" "192.168.209.128" "192.168.209.141" - Providing fixed IP input
for ((j=128;j<=142;j++))
do
i="192.168.209.$j"
ping -c2 $i >/dev/null
if [[ $? -eq 0 ]]  #to check whether previous command executed or not. If executed, result is 0
then
echo "Server $i is reachable" 
ssh $i "exit"
if [[ $? -eq 0 ]]
then
echo "Server $i is sshable" >>sshable.txt #saving the IP address which are able to SSH to server
ssh $i "uptime;useradd keerthan_suhas;getent passwd keerthan_suhas" #Run command if server is SSH able.
else
echo "Server $i is not sshable"
fi
else
echo "Server $i is not reachable" >>Notreachable.txt  #List of the IP address which are not able to SSH to server
fi
echo "==================================================="
done

