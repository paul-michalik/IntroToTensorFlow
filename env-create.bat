@echo off

setlocal
conda create -y --name IntroToTensorFlow
if %errorlevel% neq 0 echo Error occured! & exit /b 1

call activate.bat IntroToTensorFlow
if %errorlevel% neq 0 echo Error occured! & exit /b 1

pip install tensorflow
if %errorlevel% neq 0 echo Error occured! & exit /b 1

endlocal