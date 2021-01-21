@echo off
del "Theme_List_v1.txt"
dir /s /a /b *.theme.css >>Theme_List_v1.txt
cls
echo Finished.
goto Request
:Request
setlocal EnableExtensions
setlocal EnableDelayedExpansion
set "INTEXTFILE=Theme_List_v1.txt"
set "OUTTEXTFILE=Theme_List_v2.txt"
set "SEARCHTEXT=C:\Users\Dawso\Music\Github-Repos\Better-Discord\Requested\Updated\"
set "REPLACETEXT="
for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set "string=%%A"
    set "modified=!string:%SEARCHTEXT%=%REPLACETEXT%!"
    echo !modified!>>"%OUTTEXTFILE%"
)
del "%INTEXTFILE%"
rename "%OUTTEXTFILE%" "%INTEXTFILE%"
endlocal
goto Mini
:Mini
setlocal EnableExtensions
setlocal EnableDelayedExpansion
set "INTEXTFILE=Theme_List_v1.txt"
set "OUTTEXTFILE=Theme_List_v2.txt"
set "SEARCHTEXT=C:\Users\Dawso\Music\Github-Repos\Better-Discord\Mini_Themes\"
set "REPLACETEXT="
for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set "string=%%A"
    set "modified=!string:%SEARCHTEXT%=%REPLACETEXT%!"
    echo !modified!>>"%OUTTEXTFILE%"
)
del "%INTEXTFILE%"
rename "%OUTTEXTFILE%" "%INTEXTFILE%"
endlocal
goto Submissions
:Submissions
setlocal EnableExtensions
setlocal EnableDelayedExpansion
set "INTEXTFILE=Theme_List_v1.txt"
set "OUTTEXTFILE=Theme_List_v2.txt"
set "SEARCHTEXT=C:\Users\Dawso\Music\Github-Repos\Better-Discord\Submissions\"
set "REPLACETEXT="
for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set "string=%%A"
    set "modified=!string:%SEARCHTEXT%=%REPLACETEXT%!"s
    echo !modified!>>"%OUTTEXTFILE%"
)
del "%INTEXTFILE%"
rename "%OUTTEXTFILE%" "%INTEXTFILE%"
endlocal
goto Theme_File
:Theme_File
setlocal EnableExtensions
setlocal EnableDelayedExpansion
set "INTEXTFILE=Theme_List_v1.txt"
set "OUTTEXTFILE=Theme_List_v2.txt"
set "SEARCHTEXT=C:\Users\Dawso\Music\Github-Repos\Better-Discord\Theme_File\"
set "REPLACETEXT="
for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set "string=%%A"
    set "modified=!string:%SEARCHTEXT%=%REPLACETEXT%!"
    echo !modified!>>"%OUTTEXTFILE%"
)
del "%INTEXTFILE%"
rename "%OUTTEXTFILE%" "%INTEXTFILE%"
endlocal
goto Transparent
:Transparent
setlocal EnableExtensions
setlocal EnableDelayedExpansion
set "INTEXTFILE=Theme_List_v1.txt"
set "OUTTEXTFILE=Theme_List_v2.txt"
set "SEARCHTEXT=C:\Users\Dawso\Music\Github-Repos\Better-Discord\Transparent\"
set "REPLACETEXT="
for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set "string=%%A"
    set "modified=!string:%SEARCHTEXT%=%REPLACETEXT%!"
    echo !modified!>>"%OUTTEXTFILE%"
)
del "%INTEXTFILE%"
rename "%OUTTEXTFILE%" "%INTEXTFILE%"
endlocal
goto .theme.css
:.theme.css
setlocal EnableExtensions
setlocal EnableDelayedExpansion
set "INTEXTFILE=Theme_List_v1.txt"
set "OUTTEXTFILE=Theme_List_v2.txt"
set "SEARCHTEXT=.theme.css"
set "REPLACETEXT=,"
for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set "string=%%A"
    set "modified=!string:%SEARCHTEXT%=%REPLACETEXT%!"
    echo !modified!>>"%OUTTEXTFILE%"
)
del "%INTEXTFILE%"
rename "%OUTTEXTFILE%" "%INTEXTFILE%"
endlocal
goto space
:space
setlocal EnableExtensions
setlocal EnableDelayedExpansion
set "INTEXTFILE=Theme_List_v1.txt"
set "OUTTEXTFILE=Theme_List_v2.txt"
set "SEARCHTEXT=_"
set "REPLACETEXT= "
for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set "string=%%A"
    set "modified=!string:%SEARCHTEXT%=%REPLACETEXT%!"
    echo !modified!>>"%OUTTEXTFILE%"
)
del "%INTEXTFILE%"
rename "%OUTTEXTFILE%" "%INTEXTFILE%"
endlocal

@TIMEOUT /T 1 > NUL