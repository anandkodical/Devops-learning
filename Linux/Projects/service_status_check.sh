#!/bin/bash
#Check the status of critical services present in file and restart if stopped

for i in $(cat /var/servicelist.txt)
do
status=$(systemctl status $i | grep -i runn* | wc -l)
if [[ $status -eq 0 ]]
then
echo $i >> stopped_serv.txt
systemctl start $i >/dev/null 2>1&
echo "$i service was stopped and it's restarted now"
elif [[ $status -eq 1 ]]
then
echo "Service $i is already running"
else
echo "service is not found"
fi
echo "======================================"
done
