@echo off 

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Hello User', 'Ready to Update Systems!!', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"

@echo off 

powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Enter your name:', 'MSIVC.EXE')}" > %TEMP%\out.tmp
set /p OUT=<%TEMP%\out.tmp
set msgBoxArgs="& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Hello: %OUT%', 'Hello');}"
powershell -Command %msgBoxArgs%

pause



set "reply=y"
set /p "reply=Want to check for updates?? %USERREG%? [y|n]: "
if /i not "%reply%" == "y" goto :eof

@echo Starting browser...{.}...

START https://github.com/malik-whitteb/ATHEROS-UPDATES