@echo off 
set TIMESTAMP=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump" --user=root --password=yourpassword --result-file="d:\backup\db_%date:/=%_%time:~0,2%-%time:~3,2%-%time:~6,2%.sql" databaseName 
forfiles /P d:\backup\ /S /M *.sql /D -<number of days> /C "cmd /c del @PATH"
echo Done!
exit
