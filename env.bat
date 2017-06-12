@echo off
setlocal
conda remove --name tensorflow --all
conda create -n tensorflow
activate tensorflow
conda install python=3.5
pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/windows/cpu/tensorflow-1.1.0-cp35-cp35m-win_amd64.whl
endlocal