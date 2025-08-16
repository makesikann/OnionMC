@echo off
setlocal

echo Enter the Minecraft port: 
set /p MC_PORT=

cd tor

if exist ..\hidden_service (
    echo Cleaning Hidden Service...
    del /q ..\hidden_service\*
) else (
    mkdir ..\hidden_service
)

echo HiddenServiceDir ..\hidden_service > torrc
echo HiddenServicePort %MC_PORT% 127.0.0.1:%MC_PORT% >> torrc

start "" tor.exe -f torrc
echo.
echo Wait for TOR to start
timeout /t 10 >nul

cls

echo Your hostname :
type ..\hidden_service\hostname
echo.

echo You can close this window. (Do not close the TOR window for the server to keep running)
pause
