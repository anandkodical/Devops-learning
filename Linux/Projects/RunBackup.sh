#!/bin/bash
echo "Enter the directory path to be backed up:"
read path
dest_path="/var/backups"
if [[ -d $path ]]
then
echo "Entered source path '$path' exists. Proceeding with backup..."
backup_file="$dest_path/backup_$(date +%Y%m%d_%H%M%S).tar"
if [[ -d $dest_path ]]
then
echo "Destination path $backup_file is exists. Proceeding.."
tar -cvf $backup_file $path >/dev/null 2>&1
echo "Backup completed successfully: $backup_file"
else
echo "Destination path is not exists. Enter 'yes' to create the destination path and proceed with the backup"
read opt
if [[ $opt == "yes" ]]
then
echo "User confirmed to create the destination folder and proceed with backup"
mkdir $dest_path
ls -ld $dest_path
tar -cvf $backup_file $path >/dev/null 2>&1
echo "Destination path created successfully and backup completed. Path is $backup_file"
else
echo "User not confirmed to create the destination path. Exiting from the backup action"
fi
fi
else
echo "Entered source path '$path' does not exist. Please check."
fi
