@echo off
Title digital clock
@mode con cols=30 lines=7
color 03
:main
cls
echo.
echo Time: %Time%
echo.
echo date:%date%
echo.
ping -n 2 0.0.0.0>nul
goto main