@echo off

setlocal
call deactivate.bat
echo 1
if %errorlevel% neq 0 echo Error occured! & exit /b 1

conda remove -y --all --name tensorflow
echo 2
if %errorlevel% neq 0 echo Error occured! & exit /b 1

conda create -y --name tensorflow python=3.5 anaconda
echo 3
if %errorlevel% neq 0 echo Error occured! & exit /b 1

call activate.bat tensorflow
echo 4
if %errorlevel% neq 0 echo Error occured! & exit /b 1

pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/windows/cpu/tensorflow-1.1.0-cp35-cp35m-win_amd64.whl
echo 5
if %errorlevel% neq 0 echo Error occured! & exit /b 1

endlocal