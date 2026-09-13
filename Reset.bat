@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------
mode con:cols=50 lines=11
echo ' > "deletethisfile.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "deletethisfile.vbs"
echo speech.speak "Fuck BGMI" >> "deletethisfile.vbs"
start deletethisfile.vbs
timeout /t 1
del deletethisfile.vbs
cls
:loop
:num
if exist deletethisfile.vbs goto num
cls
title NWTWORK RESETTER BY TEAM AK
color 70
echo ' > "deletethisfile.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "deletethisfile.vbs"
echo speech.speak "Network reset in 10 seconds" >> "deletethisfile.vbs"
start deletethisfile.vbs
timeout /t 1
del deletethisfile.vbs
timeout /t 4
cls

color 60
echo ' > "deletethisfile.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "deletethisfile.vbs"
echo speech.speak "Network reset in 5 seconds" >> "deletethisfile.vbs"
start deletethisfile.vbs
timeout /t 1
del deletethisfile.vbs
timeout /t 4
cls

color 20
echo ' > "deletethisfile.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "deletethisfile.vbs"
echo speech.speak "Network reset Start" >> "deletethisfile.vbs"
start deletethisfile.vbs
timeout /t 1
del deletethisfile.vbs
cls

color 40
netsh advfirewall firewall add rule name=Block12345 protocol=TCP dir=in localport=0-65535 action=block
netsh advfirewall firewall add rule name=Block12345 protocol=TCP dir=out localport=0-65535 action=block
netsh advfirewall firewall add rule name=Block12345 protocol=UDP dir=in localport=0-65535 action=block
netsh advfirewall firewall add rule name=Block12345 protocol=UDP dir=out localport=0-65535 action=block
ping 127.0.0.1 -n 4 > nul
netsh advfirewall firewall delete rule name=Block12345
echo ' > "deletethisfile.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "deletethisfile.vbs"
echo speech.speak "Network reset Done. press any key to bypass new reset" >> "deletethisfile.vbs"
start deletethisfile.vbs
timeout /t 1
del deletethisfile.vbs
timeout /t 4
color 47
cls
echo Press Any key To Bypass Timer And Reset Network
timeout /t 200
GOTO loop
