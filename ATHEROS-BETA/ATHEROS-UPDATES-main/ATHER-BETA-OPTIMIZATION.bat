echo Be sure to check for updates first! before continuing if u alr did press enter.

set "reply=y"
set /p "reply=?want to apply optimizations ( requires admin )? %USERREG%? [y|n]: "
if /i not "%reply%" == "y" goto :eof

@echo load optimization.bat.............. 

echo found the file optimization.exe loading it............

start Win10optimizer.bat

