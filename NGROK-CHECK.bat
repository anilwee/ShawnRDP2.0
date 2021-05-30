@echo off
net config server /srvcomment:"Windows Azure ni PHC-Zaxcal" > out.txt 2>&1
echo This is personal VM of PHC Zaxcal
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
ping -n 10 127.0.0.1 >nul






