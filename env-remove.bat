@echo off

setlocal
call deactivate.bat
if %errorlevel% neq 0 echo Error occured! & exit /b 1

conda remove -y --all --name IntroToTensorFlow
if %errorlevel% neq 0 echo Error occured! & exit /b 1

endlocal