@echo off
cd C:\Users\Dawso\Music\Github-Repos\Better-Discord\Requested\Updated
del "Theme_List.txt" >nul 2>&1
for /s %%A IN ("*") DO echo "%%A">>Theme_List.txt
cls
echo Finished.
echo Window will close in 10s, Or press any key to close now.
@TIMEOUT /T 10 > NUL