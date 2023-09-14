@rem C:\Users\mrc\scoop\apps\scoop\current\bin\scoop.ps1
@echo off
where /q pwsh.exe
if %errorlevel% equ 0 (
    pwsh -noprofile -ex unrestricted -file "C:\Users\mrc\scoop\apps\scoop\current\bin\scoop.ps1"  %*
) else (
    powershell -noprofile -ex unrestricted -file "C:\Users\mrc\scoop\apps\scoop\current\bin\scoop.ps1"  %*
)
