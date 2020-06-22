# MySql-Backup-using-Batch-File

How to backup your MySQL database automatically using batch file (.bat).

You can follow the Steps given below.

## Step 1: 

First Create a Folder for Backup your MySQL Databases manually.  And inside that folder create a normal text file.

``` right-click -> New -> Text Document ```

## Step 2:

Rename that text file to `dbbackup.bat`.  And now open that file and start writing your backup code.

To Open a file : `` right-click -> Edit ``.  It will open in a Notepad.

## Step 3:

write the code or copy the below Code and paste it in the notepad.

``` 
    @echo off 
    set TIMESTAMP=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
    "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump" --user=root --password=yourpassword --result-file="d:\backup\db_%date:/=%_%time:~0,2%-%time:~3,2%-%time:~6,2%.sql" databaseName 
    forfiles /P d:\backup\ /S /M *.sql /D -<number of days> /C "cmd /c del @PATH"
    echo Done!
    exit
```

## Step 4: 

Edit the Above code.

    `` 
    1. change the correct directory of your mysqldump folder. 
    2. Enter your password of the MySQL databases in the 'yourpassword' word. 
    3. Enter your Database Name which is to backup and replace the word 'databaseName' to your DatabaseName. 
    4. Enter the Number of Days you want to delete your old backup files.  Replace the word 'number of days' to any number you want.  
    ``
    Eg. `` forfiles /P d:\backup\ /S /M *.sql /D -7 /C "cmd /c del @PATH" `` 

Save and close the file.

## Step 5: 
 
Here we can see how to setup your ` Task Scheduler `.

First click the Start Menu: 
    ![alt text](http://url/to/img.png)
    
