TITLE Valorant Rebooter
@echo off
cls
if _%1_==_payload_  goto :payload

:getadmin
    echo %~nx0: Admin yetkisi ana makineden isteniyor.
    set vbs=%temp%\getadmin.vbs
    echo Set UAC = CreateObject^("Shell.Application"^)                >> "%vbs%"
    echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
goto :eof

:payload

::The Code::
@echoff
cls
taskkill /IM "BsSndRpt.exe" /F
taskkill /IM "LeagueClient.exe" /F
taskkill /IM "LeagueClientUx.exe" /F
taskkill /IM "LeagueClientUxRender.exe" /F
taskkill /IM "Uninstall League of Legends.exe" /F
taskkill /IM "jpatch.exe" /F
taskkill /IM "League of Legends.exe" /F
taskkill /IM "LeagueCrashHandler.exe" /F
taskkill /IM "RiotClientServices.exe" /F
taskkill /IM "RiotClientUx.exe" /F
taskkill /IM "RiotClientUxRender.exe" /F
taskkill /IM "RiotClientUxRender.exe" /F
taskkill /IM "RiotClientCrashHandler.exe" /F
taskkill /IM "VALORANT-Win64-Shipping.exe" /F
taskkill /IM "VALORANT.exe" /F
taskkill /IM "UnrealCEFSubProcess.exe" /F
taskkill /IM "UnrealCEFSubProcess.exe" /F
start /b "Valorant" "C:\Riot Games\Riot Client\RiotClientServices.exe" --launch-product=valorant --launch-patchline=live
start /b "Valorant" "E:\Riot Games\Riot Client\RiotClientServices.exe" --launch-product=valorant --launch-patchline=live
exit
::Code::
