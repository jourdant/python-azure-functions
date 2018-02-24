@ECHO OFF
echo Starting Python Function Deployment...

::copy functions files
echo Copying functions to root dir...
xcopy "%DEPLOYMENT_SOURCE%\functions" "%DEPLOYMENT_TARGET%" /Y /E

::install required python packages
echo Installing Python packages...
cd /d "%DEPLOYMENT_SOURCE%"
python -m pip install -r "%DEPLOYMENT_SOURCE%\requirements.txt"