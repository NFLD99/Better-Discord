@echo off
echo Starting...
Set "url=https://nfld99.com/assets/NFLD99.txt"
for %%# in (%url%) do ( set "File=%tmp%\%%~n#.txt" )
Call :Download "%url%" "%File%"
If exist "%File%" Type "%File%"
:Download <url> <File>
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('%1','%2')"
forfiles /S /M *.PNG /C "cmd /c rename @file @fname.png"
cls
echo Renaming .PNG files to .png
echo [----------]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 10
echo [#---------]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 20
echo [##--------]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 30
echo [###-------]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 40
echo [####------]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 50
echo [#####-----]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 60
echo [######----]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 70
echo [#######---]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 80
echo [########--]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 90
echo [#########-]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Renaming Please Wait... 100
echo [##########]
If exist "%File%" Type "%File%"
@TIMEOUT /T 1 > NUL
cls
echo Finished.
echo Window will close in 10s, Or press any key to close now.
If exist "%File%" Type "%File%"
del "NULs" >nul 2>&1
@TIMEOUT /T 10 > NUL & Exit 
exit /b