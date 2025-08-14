:: ======== Extreme Batch Prank Pack ========
:: Warning: For prank/demo purposes only! 
:: Stop using CTRL+C then press Y, or kill cmd.exe in Task Manager.

@echo off
title Extreme Batch Prank Pack
color 0A

:menu
cls
echo ===========================================
echo        EXTREME BATCH PRANK PACK
echo ===========================================
echo 1. Safe Fork Bomb (with delay)
echo 2. Extreme Fork Bomb (no delay)
echo 3. Program Spam (Notepad, Calculator, etc.)
echo 4. Fake Error Spam + Beep
echo 5. Fake BSOD (Blue Screen of Death)
echo 6. Exit
echo ===========================================
set /p choice=Enter your choice (1-6): 

if %choice%==1 goto bomb_safe
if %choice%==2 goto bomb_extreme
if %choice%==3 goto spam_program
if %choice%==4 goto fake_error
if %choice%==5 goto fake_bsod
if %choice%==6 exit
goto menu

:: ===== Mode 1 - Safe Fork Bomb =====
:bomb_safe
echo Press CTRL+C and Y to stop!
pause
:a
start "" cmd /c "echo Safe fork bomb running... && timeout /t 1 >nul"
goto a

:: ===== Mode 2 - Extreme Fork Bomb =====
:bomb_extreme
echo Press CTRL+C and Y to stop!
pause
:b
start "" cmd /c "echo EXTREME FORK!!!"
goto b

:: ===== Mode 3 - Program Spam =====
:spam_program
echo Press CTRL+C and Y to stop!
pause
:c
start notepad
start calc
goto c

:: ===== Mode 4 - Fake Error Spam + Beep =====
:fake_error
color 4
echo Press CTRL+C and Y to stop!
pause
:d
start "" cmd /c "color 4 && echo [CRITICAL ERROR] System Failure! && echo ^G && timeout /t 1 >nul"
goto d

:: ===== Mode 5 - Fake BSOD =====
:fake_bsod
color 1f
mode con cols=80 lines=25
title Blue Screen of Death (FAKE)
cls
echo.
echo A problem has been detected and Windows has been shut down to prevent damage
echo to your computer.
echo.
echo The problem seems to be caused by the following file: FAKE.SYS
echo.
echo *** STOP: 0x0000007B (0xF78D2524,0xC0000034,0x00000000,0x00000000)
echo.
echo Beginning dump of physical memory...
timeout /t 3 >nul
cls
:e
echo Physical memory dump complete.
echo Contact your system administrator or technical support group for further assistance.
echo.
echo ^G
timeout /t 2 >nul
goto e
