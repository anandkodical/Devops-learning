#!/bin/bash
echo "Enter the log file path"
read log_path
echo "Enter the number of days you wish to keep the log files. (older than mentioned date logs will be deleted)"
read day
output_log="/var/deleted_logs_history/logs.txt"
if [[ -d $log_path ]]
then
echo "Log path present. Porceeding to delete the logs before $day from $log_path"
find $log_path -type f -name "*.log" -daystart -ctime +30 -print | tee -a $output_log | xargs rm -f
echo "Deleted files are displayed below as well as saved in the $output_log filefor future reference."
else
echo "Entered log path $log_path is incorrect. Please check"
fi
