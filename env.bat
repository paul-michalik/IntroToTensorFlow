@echo off

setlocal
call deactivate.bat
echo 1
if %errorlevel% neq 0 echo Error occured! & exit /b 1

conda remove -y --all --name IntroToTensorFlow
echo 2
if %errorlevel% neq 0 echo Error occured! & exit /b 1

conda create -y --name IntroToTensorFlow
echo 3
if %errorlevel% neq 0 echo Error occured! & exit /b 1

call activate.bat IntroToTensorFlow
echo 4
if %errorlevel% neq 0 echo Error occured! & exit /b 1

pip install tensorflow
if %errorlevel% neq 0 echo Error occured! & exit /b 1

endlocal