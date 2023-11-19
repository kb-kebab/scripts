@echo off

setlocal EnableDelayedExpansion

REM Define the characters to be used for generating the password

set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@#$"

REM Define the length of the password
set "length=10"

REM Set a variable to store the generated password
set "password="

REM Generate the random password
for /L %%i in (1,1,%length%) do (
    set /A index=!random! %% 78
    for /F %%a in ("!index!") do set "password=!password!!characters:~%%a,1!"
)

REM Display the generated password
echo Generated Password: %password%

endlocal