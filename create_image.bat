rem @echo off
rem get script path and derive shell script's path
set absDir=%~dp0
set scriptFileName=%absDir%create_image.sh

set elfFile=%1
rem format path for mintty call
set scriptFileName=%scriptFileName:C:\=/c/%
set scriptFileName=%scriptFileName:\=/%
set elfFile=%elfFile:C:\=/c/%
set elfFile=%elfFile:\=/%

rem call mintty
C:\msys64\usr\bin\mintty.exe /bin/env MSYSTEM=MINGW64 /bin/bash -l %scriptFileName% %elfFile%
