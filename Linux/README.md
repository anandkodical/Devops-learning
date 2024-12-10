**Linux-for-Devops**

I have started learning RedHat linux commands. I will update weekly report below.

**Week-1:-**

    1 uname : To check OS

    2 uname -r : to check OS version

    3 uname -m : to check whether 32 bit or 64 bit

    4 uname -a : to check all details

    5 uptime :to check uptime - from how many time server is running

    6 who :to check how many users are accessing the server at this moment

    7 whoami :to check the username you have logged into server

    8 su root :switch user to root

    9 free :to check the used and available memory space

    10 free -m :to get output in MB

    11 free -g :to get output in GB

    12 df -h :to check used and available disk space

    13 top :to check running process (dynamic) which will update every second

    14 top -b -n2 :to terminate the output after 2 seconds

    15 ps -eaf :to get static running process which will not update realtime

    16 date :to display date, time and timezone

    17 date +%Y-%m-%d :to display in YYYY-MM-DD format

    18 date +%Y-%m-%d -d "10 days ago" :to display date before 10 days

    19 date +%Y-%m-%d -d "10 days" :to display date after 10 days

    20 date +%Y-%m-%d" "%H:%M:%S :to display date and time in specified format

    21 date +%Y-%m-%d" "%H:%M:%S -d "10 minutes ago" :to display time before 10 minutes

    22 ps -eaf | grep firefox :to display firefox process

    23 ps -eaf | grep firefox | grep facebook :to display facebook process which is opened in firefox

    24 kill 3545 :to kill an process using PID

    25 kill -9 3565 :to close process forcefully

    26 pkill firefox :to close firefox process

    27 pkill -9 firefox :to close process forcefully

    28 ls -ltr :to list files and directory in long list

    29 pwd :to know present directory/path

    30 cd :to change directory

    31 touch <file.txt> :to create blank file

    32 cat > simple.txt :to create a file with content

    33 cat simple.txt :to display file content

    34 cat -n simple.txt :to display content with line number

    35 tac simple.txt :to display content in reverse order

    36 mkdir folder_name :to create a directory

    37 touch .file1.txt & mkdir .folder1 :to create hidden file and folder

    38 cp : to create a duplicate file

    39 cp file1.txt to file2.txt : duplicate file will be created on same directory with name file2.txt

    40 cp file1.txt to /var : duplicate file will be created under /var folder

    41 cp file1.txt to /var/file2.txt : duplicate file will be created in var directory with name file2.txt

    42 mv : used to move/rename the file/directory to different location

    43 mv file1 file2 : file1 will be renamed as file2

    44 mv file1 /var/xyz : file1 will be moved to xyz directory

    45 mv abc /var/xyz : abc directory will be moved inside xyz directory

**Week-2:-**

    46 rm <filename> : Used to delete the file

    47 rmdir -r <directory> : To delete the directory

    48 ls -ltr t1.txt : to print t1.txt if exist

    49 ls -ltr p[0-9] : Print files which starts with p and next having the numbers from 0-9

    50 ls -ltr p[0-9a-z] : Print files starts with p and net character from 0-9 and any character

    51 wc -l t1.txt : To print the line numbers of t1.txt

    52 wc -w t1.txt : To print word count of t1.txt

    53 wc -c t1.txt : To print tottal number of character in file t1.txt

    54 echo "Hello" : Used to print the output in terminal

    55 echo "Good morning" > f1.txt : To save message in f1.txt file (this will overwrite the file if already exists)

    56 echo "Good morning" >> f2.txt : Used to append the string to the file.

    57 echo $? :To check whether previous command got executed properly or not

    58 head f1.txt :to print first 10 lines of the file

    59 tail f2.txt :To print bottom 10 lines of the file - can mention number of lines to print the specified lines

    60 sort file1.txt	: To sort file in assending order based on the character

    61 sort -n file1.txt	: Sort file based on the numerical value

    62 sort -r file1.txt	: sort in reverse order

    63 uniq	: to show only uniq values (uniq will always used along with sort. without sort uniq will not work)

    64 sort file1.txt | uniq -c	: to display count of the values repeated

    65 sort file1.txt | uniq -d	: sort and display only duplicate values

    66 sort -k1 -n file1.txt 	: to sort the values based on the coulmn values

    67 last	: to know when was the linux OS installed and login and logout logs from the date of installation

    68 last | grep reboot	: to display the rows when the server was rebooted

    69 last | grep anand	: to display the login log of the specific user

    70 cat /proc/cpuinfo | grep processor : to display how many processor are present. starts from 0.

    71 ps axo %cpu,%mem,pid,S,user, command | sort k1 -nr|head : To display top 10 CPU usage processors

    72 grep error messages : To get the error lines from the messages file

    73. grep error dmesg : to get the error codes from dmseg file

    74 tail secure : to get the last 10 lines from the secure file

    75 cat boot.log : to display content from the boot log (used to identify the processes which are started when boot)

    76 useradd anandk : to create a new user called anandk

    77 passwd anandk : to set password for user anandk (can check /etc/shadow whether password is present or not)

    78 which uptime : to know where the command uptime is stored (all commands will be saved under bin, sbin, /usr/bin, /usr/sbin only

    79 cat proc/cpuinfo | grep processor ; To know the number of processor available in server
    
    80 cat meminfo : To know the memory details of the server(same as free command output)
    
    81 cat mounts : To know the partition details of the server (same as df output)
    
    82 dmidecode : To know all physical information on server. Like processor, serial number of the server, Manufacturer, RAM partition using the command options
    
    83 dmidecode -t memory|more	: To know the RAM details along with memory slots
    
    84 dmidecode -t processor|more : To know processor type, Manufacturer, version etc

**Week-03**

**Linux File Structure**


1. /etc : For all permanent chnages and system configuration changes will be updated under this directory
2. /boot : Contains all files which are required for booting of the server. If any files got deleted, server will not get boot
3. /home : Whenever new user is created, one directory will be created in /home with username and that will be the home directory for that user
4. /root : It's the home directory of root user.
5. /var	: Where logs and databases are stored.
     a. /var/log/cron 	:- Contains sheduled tasks log details to know whether all tasks were executed or not
     b. /var/log/secure	:- Shows all user authentication logs including wrong password, success entry
     c. /var/log/messages :- Contains general information log of the server
     d. /var/log/dmesg	:- Shows hardware log details including which hardware got detected while boot and which are not
     e. /var/log/boot.log  :- Shows all services which are started at the time of boot and not started services
     f. /var/log/maillog :- To verify whether all emails have been delivered to receipents or not
6. /proc :- Contains only live running information of server
    /proc/meminfo :- Shows live RAM details of the server
    /proc/cpuinfo :- Contains processor details
    /proc/mounts :- Contains current mount and partition details
7. /tmp  :- All temporary files created by all users will be saved and accessible to everyone. Therefore, important files or information should not be saved in this directory
8. /mnt :- Contains external mounted details
9. /dev	:- Contains device information like HDD, Pendrive etc

    

**Runlevel**

This is like a safe mode in windows. If any critical errors occure and we are unable to login to server then we can login as single user mode and make the changes to server. If root user forgot password then we can reset in single user mode.

There are 0-6 runlevels

    0 ==> Halt (shutdown) ==> Should not use this mode otherwise server will get shutdown when turned on
    
    1 ==>single user mode ==>can edit in this mode
    
    2 ==>multi user mode
    
    3 ==>CLI mode. Putty or mobax
    
    4 ==>not used
    
    5 ==>GUI mode with multiple user. Ex VMWare
    
    6 ==>reboot	==> Should not use this mode otherwise server will go to reboot loop
	
We can make the runlavels under /etc/inittab file. Also, can check the current runlevel using who -r command	


**VIM Editor**	
	
	:16 <enter>	: To go to 16th line

	:$ <enter>	: To got to last line of the file

	:1 <enter>	: Go to first line of the file

	<esc> dd : to delete the specific line where the cursour is there

	<esc> 5dd : to delete next 5 lines from where cursor is there now

	:%s/praveen/anand/g	: to replace praveen with anand globally

	:%s/praveen/anand : to replace first occurence of praveen with anand in each line

	:17s/praveen/anand : replace first praveen with anand on line 17 only

	:10,15s/praveen/anand/g	: replace praveen with anand from line no 10 to 15

	:17s/praveen/anand/g : replace all praveen with anand on line 17 only

	:%s/^/anand	: to add anand in starting of all lines

	:%s/$/anand	: to append anand in all lines at the end

	:%s/^$/anand : To delete the blank lines from the files

	:u	: to undo the chnages done

	:q!	: quit without saving the file

	:wq! : save and quit the file


****User Administration****

	==> 1. Administrator User  ===> root ===> User ID will be 0

	==> 2. System User ===> users that are created while OS installation, app installation or package installation  ===>User ID will be between 1-999 in Linux 6 and 500-1000 in linux 7

	==> 3. Normal User ===> That are created by the root or other user ===> User ID between 1000 to 60000


**Adding User:-**

  	useradd <nov21>  (User nov21 will be created)

**To confirm user creation**

     	cat /etc/passwd | grep <nov21>	(This will display the user row which is created now)

![image](https://github.com/user-attachments/assets/8db15330-c526-453e-8c74-e2bc5e73198a)


**To check whether password is set for the user**

   	cat /etc/shadow		(This will confirm whether password is set for the user. If set the encrypted password will be shown, else !! will be shown. Also, password will be shown as X in the passwd file)

![image](https://github.com/user-attachments/assets/f8823f8a-24b5-4ed2-894c-5163819e4aa5)


**To change User ID for the user**

	usermod -u 650 nov21	(This will assign the User ID 650 to the user nov21)

![image](https://github.com/user-attachments/assets/8dd85067-bf12-483c-b27e-8072c22f892d)


**To change Group ID for the user**

	groupmod -g 700 nov21	(To change group ID)

 ![image](https://github.com/user-attachments/assets/5148b397-5998-413f-91c1-a0aa90751db0)


 **To modify the description of the existing user**

 	usermod -c "Testing" nov21	(This is used to filter who all working under Testing dept)

  ![image](https://github.com/user-attachments/assets/d560469c-c308-49c0-8e3d-be0ca4e460df)


  **To change home directory of the user**
  
  (If the Home directory is full then we can change the path of home directory to other path)

  	usermod -d /var/nov21 nov21	(Informing linux to change the home directory of nov21 user to /var/nov21)

  ![image](https://github.com/user-attachments/assets/5dcfe914-f18b-41fe-9ab5-1f5513bee0c2)



  **To know the which bash current user logged in**

  ps -p $$

  ![image](https://github.com/user-attachments/assets/ce23f8b2-eb94-4c7e-a93a-2f1b7f20f8fb)


  **To know available shells**

  cat /etc/shells	(Most of the services support bash and if the user developed the application using .sh then those commands will run in .sh shell)

  ![image](https://github.com/user-attachments/assets/9c3ea009-742f-4fab-96fd-ba4998446b46)


If you wish to switch to .sh from bash the type **sh** command. To return to bash, type **exit**.


  **To change the shell terminal from bash to sh**

  usermod -s /bin/sh nov21	(Terminal for user nov21 will be chnaged to bash to sh permanently. If you login to nov21, it will show sh instead of bash)

  ![image](https://github.com/user-attachments/assets/c8548655-e619-4f9c-a8fa-90271b8afd42)


**To change the bash to /sbin/nologin**

	usermod -s /sbin/nologin nov21		(This will make exit from the terminal when user nov21 tries to login to server)

![image](https://github.com/user-attachments/assets/08d2f811-19b0-405c-91a2-3d49e109f121)

  
  
  **Difference between .bash_profile & .bash_rc**

  	.bash_profile file will be executed whenever user directly login to linux server. This includes new session or duplicate session in Putty application.

   	.bashrc will be executed while user indirectly login to server. This is when we do switch user.

    	For example, if we add the uptime and date command in .bash_profile the when you login as duplicate session the both command will be executed.
     
![image](https://github.com/user-attachments/assets/8a3f70dc-8601-4376-9da3-9f9b1bed7193)

	Since .bash_profile is calling the .bashrc command as well, commands will be executed for both direct and indirect logins.


 
 
 **GROUP ADMINISTRATION**

 Creating a group

 	groupadd gnov27

To check whether group is added successfully.

 	cat /etc/group

	Note: If the group entry is present in only /group then it's a group. If the entry is present in both /group and /passwd then it's a user.

 **To add a user to created group**

 	usermod -G gnov27 nov21

  To confirm this, 

  	cat /etc/group|grep nov21

   ![image](https://github.com/user-attachments/assets/c55ea7e9-25db-4654-885c-2011b7706048)

   	Note : This will remove the existing groups if any added to the user while adding to gnov27 group. In order to append use below command.

    	usermod -a -G gnov27 nov21

![image](https://github.com/user-attachments/assets/2ada577a-7986-466e-87e3-5a58125a960a)


**To remove user from the group**

	gpasswd -d nov22 gnov27

![image](https://github.com/user-attachments/assets/03a537ed-2069-4337-a984-e6ecd891a78a)
![image](https://github.com/user-attachments/assets/1ef7ea8d-6c94-44c8-9bcd-015607820cb8)


**To lock the password for a user**

	passwd -l nov21		(This will lock the user by login to that he will get the Access denied error while login)

![image](https://github.com/user-attachments/assets/b56912b8-71dc-4e48-80cd-e3e300a53923)


**To unlock the password to user**

	passwd -u nov21

![image](https://github.com/user-attachments/assets/03610fd7-12c2-4a21-a100-fc35aecbc669)

**To delete the group**

	groupdel gnov27

 **To check the user age details**

 	chage -l nov21	(It will show Last password change, Passwd expiration date, Account expiration details etc)
  
![image](https://github.com/user-attachments/assets/6735d7ea-2fb6-4527-81d2-98a3e009e3f5)


**To change the expiration date of the user to Dec 30, 2025**

	chage -E "2025-12-30" nov21

![image](https://github.com/user-attachments/assets/aa28b583-398f-498f-bbb1-eae765ffa1f8)

**To update the all values in chage option**

	chage nov21

 **To delete the User**

 	userdel nov21	(This will delete only the user from /etc/passwd and will not delete the user directory from /home/nov21)

![image](https://github.com/user-attachments/assets/36ca2593-4066-4b51-8421-0ecd1bb5ffac)


	userdel -r nov22	(This will delete the user along with home directory)

![image](https://github.com/user-attachments/assets/d3eb86e6-176e-41b3-aa6a-5929b5e4acd2)


**ZIP and UNZIP of a file**

	zip <new-file> <original file>

 	zip zi.txt kp.txt

![image](https://github.com/user-attachments/assets/00949d2d-8631-4cc1-921c-7941365e1a1c)

	zcat zi.txt	(To display the content of zipped file)

![image](https://github.com/user-attachments/assets/85378ed3-3e8a-40de-83f5-0bdd7ef9ea6a)

**To know the original file name which got zipped**

	unzip -l zi.txt

![image](https://github.com/user-attachments/assets/95402efa-7f65-4e18-a5a6-7eb6bc5cbfa7)


**To unzip the file zi.txt and get the original file back**

	unzip zi.txt
 
![image](https://github.com/user-attachments/assets/a95d4e36-78cb-4c43-a784-d21bcf837b30)

**Method 2 for zip the file**

	gzip <filename?

	gzip kp.txt	(File will be renamed as kp.txt.gz)

 In order to see the original file, execute below command

 	gunzip -l kp.txt.gz

![image](https://github.com/user-attachments/assets/4f2b9089-4a70-4495-9d6d-51f519a79ea5)


To unzip the .gz file,

	gunzip kp.txt.gz

![image](https://github.com/user-attachments/assets/904ae43a-2fbe-4a42-bf97-7a1b969ce569)


 
**ZIP and UNZIP of a directory**

tar -cvf <new-file.tar> <original directory>

	tar -cvf bdir.tar bdir	(bdir directory will be zipped to bdir.tar file)

![image](https://github.com/user-attachments/assets/cd6b8d6c-f589-4579-a3f0-3108ce72c851)

After converting the directory to .tar file then need to gzip format.

	gzip bdir.tar

![image](https://github.com/user-attachments/assets/e157b82e-30c9-4d8c-9886-0615fbd9f064)
![image](https://github.com/user-attachments/assets/22e492ef-2456-437b-bc16-0c6c36126506)











 









 

 




  


  










