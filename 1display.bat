@echo off
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,REG ADD "HKLM\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoTrayItemsDisplay /t REG_DWORD /d 1 /f & REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoTrayItemsDisplay /T REG_DWORD /D 1 /F & REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoTrayItemsDisplay /T REG_DWORD /D 1 /F' -Verb runAs"
Powershell.exe -executionpolicy remotesigned -Command "& {Stop-Process -ProcessName explorer -Force}"
exit

