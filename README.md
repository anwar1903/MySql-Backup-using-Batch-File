# MySql Backup using Batch File (.bat)

- How to backup your MySQL database automatically using batch file (.bat).

- You can follow the Steps given below.

## Step 1: 

- First Create a Folder for Backup your MySQL Databases manually.  And inside that folder create a normal text file.

``` right-click -> New -> Text Document ```

## Step 2:

- Rename that text file to `dbbackup.bat`.  And now open that file and start writing your backup code.

- To Open a file : `` right-click -> Edit ``.  It will open in a Notepad.

## Step 3:

- write the code or copy the below Code and paste it in the notepad.

``` 
    @echo off 
    set TIMESTAMP=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
    "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump" --user=root --password=yourpassword --result-file="d:\backup\db_%date:/=%_%time:~0,2%-%time:~3,2%-%time:~6,2%.sql" databaseName 
    forfiles /P d:\backup\ /S /M *.sql /D -<number of days> /C "cmd /c del @PATH"
    echo Done!
    exit
```

## Step 4: 

- Edit the Above code.
    ``` 
      1. change the correct directory of your mysqldump folder. 
    ```
    ```
      2. Enter your password of the MySQL databases in the 'yourpassword' word. 
    ```
    ```
      3. Enter your Database Name which is to backup and replace the word 'databaseName' to your DatabaseName. 
    ```
    ```
      4. Enter the Number of Days you want to delete your old backup files.  Replace the word 'number of days' to any number you want.  
    ```
    Eg. `` forfiles /P d:\backup\ /S /M *.sql /D -7 /C "cmd /c del @PATH" `` 

- Save and close the file.

## Step 5: 
 
Here we can see how to setup your ` Task Scheduler `.

 - First click the Start Menu and Search `Task Scheduler`. 
 
    ![img1](/img/img1.png)
    
 - `Task Scheduler` appears.
    
    ![img2](/img/img2.png)
    
 - Click the `Task Library` on `Task Scheduler`.
    
    ![img3](/img/img3.png)
 
 - Click the `Create Basic Task`  on `Task Scheduler`.
    
    ![img4](/img/img4.png)
  
 - Write the Scheduler name, here I'll declare `dbBackup` on `Create Basic Task Wizard`.
    
    ![img5](/img/img5.png)
    
 - Click `Next`. In Trigger Tab, Select any one from the List on `Create Basic Task Wizard`.
    
    ![img6](/img/img6.png)
 
 - Click `Next`. In Daily Tab, Select Start Date and End Date on `Create Basic Task Wizard`.
    
    ![img7](/img/img7.png)
 
 - Click `Next`. In Action Tab, Click `Start a Program` on `Create Basic Task Wizard`.
    
    ![img8](/img/img8.png)

 - Click `Next`. In Start Program Tab, Select you Batch File from your Computer.
    
    ![img9](/img/img9.png)
    
 - Click `Next`. In Finish Tab, Click the Check box and Click Finish Button.
    
    ![img10](/img/img10.png)
    
  - `Proerties Window` appears. Now Click the Check Box and Click `Ok`.
    
    ![img11](/img/img11.png)
    
    
 ## Step 6:
 
  - For the First Time click Run button on the bottom right of the `Task Scheduler`.
  - And it will call every day at specific time.
    
