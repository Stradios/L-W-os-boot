@echo off
:: Check for administrator privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :runScript
) else (
    echo You must run this script as an administrator.
    echo Please right-click on the script and select "Run as administrator."
    pause
    exit /b 1
)

:runScript
setlocal

:: Prompt the user for their username
set /p username=Enter your Windows username: 

:: Define the source and destination folders
set "source_folder=C:\Users\%username%\Downloads\os swap"
set "destination_folder=C:\ProgramData\Microsoft\Windows\Start Menu\Programs"

:: Check if the source folder exists
if not exist "%source_folder%" (
    echo Source folder does not exist: "%source_folder%"
    pause
    exit /b 1
)

:: Copy the folder to the destination
xcopy "%source_folder%" "%destination_folder%" /E /I /H /K

echo.
echo "os swap" folder has been copied to the Start Menu.
pause

:: End the script
exit /b 0
