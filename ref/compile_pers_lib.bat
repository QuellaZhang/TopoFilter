@echo on

REM Test env: VS2019 16.11.7 + Python 3.6.2
set path=C:\Python36;%PATH%
set PATH=C:\Python\Python36\Scripts;%PATH%

REM Install the required modules
pip3 install torch torchvision torchaudio
pip3 install scipy==1.1.0
pip3 install termcolor
pip3 install matplotlib
pip3 install tqdm
pip3 install h5py

REM Generate a shared library
if exist build rd /s/q build
python setup.py build

REM Copy the library
copy %cd%\build\lib.win-amd64-3.6\PythonGraphPers_withCompInfo.cp36-win_amd64.pyd %cd%\..\PythonGraphPers_withCompInfo.pyd /y
