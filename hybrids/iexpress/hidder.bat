;:: uses AppLaunched and ShowInstallProgramWindow options in iexpress sed files
;:: to start a hidden process
;:: could require admin privileges 
;::http://www.dostips.com/forum/viewtopic.php?f=3&t=5901


;@echo off
;setlocal
; rem https://github.com/ynstf/batch.scripts/edit/master/hybrids/iexpress/bat2exeIEXP.bat
;if "%~2" equ "" (
; echo usage: %~nx0 batFile.bat target.Exe
;)
;set "target.exe=%__cd__%%~2"
;set "app_file=%~f1"
;set "app_name=%~nx1"
;set "app_dir=%~dp1"

;copy /y "%~f0" "\2exe.sed" >nul

;(echo()>>"\2exe.sed"
;if "%app_name:~-4%" equ ".bat" (
;(echo(AppLaunched=cmd.exe /c "%app_name%")>>"\2exe.sed"
;) else (
;echo(AppLaunched="%app_name%")>>"\2exe.sed"
;)
;(echo(TargetName=%target.exe%)>>"\2exe.sed"
;(echo(FILE0="%app_name%")>>"\2exe.sed"
;(echo([SourceFiles])>>"\2exe.sed"
;(echo(SourceFiles0=%app_dir%)>>"\2exe.sed"
;(echo([SourceFiles0])>>"\2exe.sed"
;(echo(%%FILE0%%=)>>"\2exe.sed"


;iexpress /n /q /m \2exe.sed

;rem del /q /f "\2exe.sed"
; exit /b 0

[Version]
Class=IEXPRESS
SEDVersion=3
[Options]
PackagePurpose=InstallApp
ShowInstallProgramWindow=1
HideExtractAnimation=1
UseLongFileName=1
InsideCompressed=1
CAB_FixedSize=0
CAB_ResvCodeSigning=0
RebootMode=N
InstallPrompt=%InstallPrompt%
DisplayLicense=%DisplayLicense%
FinishMessage=%FinishMessage%
TargetName=%TargetName%
FriendlyName=%FriendlyName%
AppLaunched=%AppLaunched%
PostInstallCmd=%PostInstallCmd%
AdminQuietInstCmd=%AdminQuietInstCmd%
UserQuietInstCmd=%UserQuietInstCmd%
SourceFiles=SourceFiles

[Strings]
InstallPrompt=
DisplayLicense=
FinishMessage=
FriendlyName=-
PostInstallCmd=<None>
AdminQuietInstCmd=
UserQuietInstCmd=
;
