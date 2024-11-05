Linux-for-Devops

I have started learning RedHat linux commands. I will update weekly report below.

Week-1

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

57 


