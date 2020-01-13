::Copyright (C) 2020 D. Michael Parrish
::Licensed under GLP-3
::Tested on Windows 10 Enterprise Version 1803 OS Build 17134.1184
echo off
color 4E
::
::Copied "localdatetime" line by Stephan and GeroldBroser from
::https://stackoverflow.com/questions/7727114/batch-command-date-and-time-in-file-name
::License: CC-BY-SA 4.0
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
::
::See Also https://notepad.patheticcockroach.com/1325/how-to-prevent-r-from-restoring-saved-workspace/
erase /p H:\Docs\.RData
::
::set quotedspace=A A
::set space=%quotedspace:~1,1%
title R %datetime:~0,4% %datetime:~4,2% %datetime:~6,2% %datetime:~8,4% %datetime:~-12%
echo.
echo ********************************************* ******
echo **** CLOSING THIS WINDOW QUITS R SESSION **** **   **
echo ****                DATED                **** **   **
echo ****                                     **** ******
echo ****      %datetime%      **** **   **
echo ****                                     **** **   **
echo ****     %datetime:~0,4% %datetime:~4,2% %datetime:~6,2% %datetime:~8,4% %datetime:~-12%     **** **   **
echo ********************************************* **   **
echo.
echo Waiting for user to close R session...
"C:\Program Files\R\R-3.5.3\bin\x64\Rgui.exe" --cd-to-userdocs
