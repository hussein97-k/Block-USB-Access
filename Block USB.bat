@echo off
title USB Port Manager
mode con: cols=60 lines=20
color 1F

:MENU
cls
echo =========================================================
echo                 USB Port Control Panel                  
echo                     [by YourName]                       
echo =========================================================
echo.
echo   [1] Block USB Storage Devices
echo   [2] Unblock USB Storage Devices
echo   [3] Exit
echo.
echo =========================================================
set /p choice= >> Enter your choice [1-3]: 

if "%choice%"=="1" goto BLOCK
if "%choice%"=="2" goto UNBLOCK
if "%choice%"=="3" exit
goto MENU

:BLOCK
cls
echo.
echo Blocking USB storage devices...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v "Start" /t REG_DWORD /d 4 /f >nul
echo USB storage devices are now BLOCKED.
pause
goto MENU

:UNBLOCK
cls
echo.
echo Unblocking USB storage devices...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v "Start" /t REG_DWORD /d 3 /f >nul
echo USB storage devices are now UNBLOCKED.
pause
goto MENU
