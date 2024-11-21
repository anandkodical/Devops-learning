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
    
    82 dmidecode : To know all physical information on server. Like processor, serial number of the server, manufacturar, RAM partition using the command options
    
    83 dmidecode -t memory|more	: To know the RAM details along with memory slots
    
    84 dmidecode -t processor|more : To know processor type, manufaturer, version etc

**Week-03**

**Linux File Structure**

    1. /etc 	Includes system configuration files. This includes passwd, shadow directories
    
    2. /bin 	Includes all common command executable files.
    
    3. /home 	contains personal directories of all users.
    
    4. /root 	It's the home directory of root user.
    
    5. /var	Where logs and databases are stored.
     a. /var/log/cron 	Crontab logs will be saved.
     b. /var/log/secure	All user authentication logs will be there.
     c. /var/log/messages	General OS related logs will be written here.
     d. /var/log/dmesg	Logs related to external devices will be saved. Ex: Mouse, keyboard
     e. /var/log/boot.log 	Checked whether all processes got started while boot so that we can troubleshoot if any issues.
     
    6. /proc/cpuinfo	All live processes will be saved
    
    7. /tmp 	All temporary files created by all users will be saved and accessible to everyone. Therefore, important files or information should not be saved in this directory
    
    8. /dev	Contains device information files such as HDD, sound devices etc.


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

  	useradd <nov21>

    **To confirm user creation**

     	cat /etc/passwd | grep <nov21>    (This will display the user row which is created now)

![image](https://github.com/user-attachments/assets/8db15330-c526-453e-8c74-e2bc5e73198a)


  **To check whether password is set for the user**

   	cat /etc/shadow		(This will confirm whether password is set for the user. If password is set the second column will contain encrypted password)

![image](https://github.com/user-attachments/assets/f8823f8a-24b5-4ed2-894c-5163819e4aa5)


**To change User ID for the user**

	usermod -u 650 nov21	(This will assign the User ID 650 to the user nov21)

![image](https://github.com/user-attachments/assets/8dd85067-bf12-483c-b27e-8072c22f892d)










