#!/bin/bash
echo "Checking the memory details"
#free | grep -i mem
total_sp=$(free | grep -i mem | awk '{print $2}')
used_sp=$(free | grep -i mem | awk '{print $3}')
echo "Total space is: $total_sp"
echo "Used space is: $used_sp"
usage=$(( used_sp*100 / total_sp ))
echo "Memory usage is: $usage%"
echo "Checking for storage information.."
df -h | grep -i "sd.*" | awk 'NR==1 {print "First partition is "$1" and used space is: "$5} NR==2 {print "Second partition is "$1" and used space is: "$5}'