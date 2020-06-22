@echo off 
set TIMESTAMP=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump" --user=root --password=bi@123 --result-file="d:\backup\db_%date:/=%_%time:~0,2%-%time:~3,2%-%time:~6,2%.sql" advocate 
forfiles /P d:\backup\ /S /M *.sql /D -1 /C "cmd /c del @PATH"
echo Done!
exit