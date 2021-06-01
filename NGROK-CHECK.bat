@echo off
net config server /srvcomment:"Windows Azure ni PHC-Zaxcal" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user runneradmin @ech.O1 /add >nul
curl -O https://raw.githubusercontent.com/Shawn2k/ShawnRDP2.0/main/DisablePasswordComplexity.ps1 > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
echo This is personal VM of PHC Zaxcal
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
ping -n 10 127.0.0.1 >nul


