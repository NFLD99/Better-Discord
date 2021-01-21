@echo off
echo Starting...
Set "url=https://nfld99.com/assets/NFLD99.txt"
for %%# in (%url%) do ( set "File=%tmp%\%%~n#.txt" )
Call :Download "%url%" "%File%"
If exist "%File%" Type "%File%"
:Download <url> <File>
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('%1','%2')"
del "Theme_List.txt" >nul 2>&1
for %%A IN ("*.theme.css") DO echo %%A>>Theme_List.txt
cls
echo Finished.
echo Window will close in 10s, Or press any key to close now.
If exist "%File%" Type "%File%"
del "NULs" >nul 2>&1
@TIMEOUT /T 10 > NUL & Exit 
exit /b