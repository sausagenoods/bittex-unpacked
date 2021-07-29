@echo off
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,Start-Sleep -s 9 & REG ADD "HKLM\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoTrayItemsDisplay /t REG_DWORD /d 0 /f & REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoTrayItemsDisplay /T REG_DWORD /D 0 /F & REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoTrayItemsDisplay /T REG_DWORD /D 0 /F' -Verb runAs"
exit

