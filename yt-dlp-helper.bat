@ECHO off
echo yt-dlp command line tool
set "path_check=%PATH%"
::incase you need to check if the program works uncomment one of the below lines
::set "path_check=nothing"
::set "path_check=yt-dlp"


:: Remove the substring from the variable
set "check=%path_check:yt-dlp=%"
:: Compare
if "%check%"=="%path_check%" (
    ::echo ^[[31m***yt-dlp MUST be installed AND be named yt-dlp.exe AND be in a folder named yt-dlp AND be on PATH***^[[0m
    powershell -Command "Write-Host '***yt-dlp MUST be installed AND be in a folder named yt-dlp AND the folder is on PATH, check github for tutorial***' -ForegroundColor DarkRed -BackgroundColor DarkBlue"
    ::echo ^[[31mtool cannot run without these conditions - tool will now exit^[[0m
    powershell -Command "Write-Host 'tool cannot run without these conditions - tool will now exit' -ForegroundColor Red -BackgroundColor DarkBlue"
    pause
    EXIT
) else (
    ::echo All Dependencies Satisfied - tool is setup correctly
    powershell -Command "Write-Host 'All Dependencies Satisfied - tool is setup correctly' -ForegroundColor Blue -BackgroundColor Gray"
)
rem grabs user's url to video, ask download location (default is "C:\Users\username\Downloads\")
rem Remember - correct format is "C:\Users\username\Downloads\%(title)s.%(ext)s"
echo.
set /p "url=Paste the URL of the song into the terminal: "
echo. 
yt-dlp -F %url%
set /p "format=Pick a format to download (eg. 251 or hls_aac_160k): " 
set /p "location=Where do you want to save the file?: "
echo.
if /i "%location%"=="" (
    ::echo Blank input, assuming default location: "C:\Users\%USERNAME%\Downloads"
    powershell -Command "Write-Host 'Blank input, assuming default location: "C:\Users\%USERNAME%\Downloads"' -ForegroundColor Blue -BackgroundColor Gray"
    set "location=C:\Users\%USERNAME%\Downloads"
)
echo.
yt-dlp -4 -f %format% -o "%location%\%%(title)s.%%(ext)s" %url%

echo.
::echo File saved to "%location%"
powershell -Command "Write-Host 'File saved to "%location%"' -ForegroundColor Blue -BackgroundColor Gray"
echo.
set /p "check_file_explorer=Do you want to open this directory in Explorer? (y/n): "
if /i "%check_file_explorer%"=="y" (
    ::echo Opening ^(%location%^) in file explorer...
    powershell -Command "Write-Host 'Opening ^(%location%^) in file explorer...' -ForegroundColor Blue -BackgroundColor Gray"
    explorer "%location%"
)
echo Exiting tool...
pause
EXIT