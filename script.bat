@echo off
color 4
title System Error
:a
echo [ERROR] Critical system failure. Code: 0xC0000005
echo.
echo Press CTRL+C to terminate the process...
echo.
echo ^G
timeout /t 1 >nul
goto a
