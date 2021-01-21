@ECHO OFF
@RD /S /Q "Theme_Packs"
for /D %%d in (*.*) do "C:\Program Files\7-Zip\7z.exe" a -tzip "%%d.zip" "%%d"
mkdir Theme_Packs
move *.zip Theme_Packs
cls
timeout 3 >nul 