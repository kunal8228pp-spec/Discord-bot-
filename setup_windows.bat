@echo off
setlocal
cd /d "%~dp0"
echo === ZyroX setup ===
where python >nul 2>nul || (echo Python 3.10+ is required. Install it from python.org and enable Add to PATH.& pause & exit /b 1)
where node >nul 2>nul || (echo Node.js 18+ is required for the dashboard. Install it from nodejs.org.& pause & exit /b 1)
if not exist "bot\.env" copy "bot\.env.example" "bot\.env"
if not exist "dashboard\.env.local" copy "dashboard\.env.example" "dashboard\.env.local"
python -m venv bot\.venv
call bot\.venv\Scripts\activate.bat
python -m pip install --upgrade pip
python -m pip install -r bot\requirements.txt
if errorlevel 1 (echo Python dependencies failed. Read the error above; some optional integrations may require extra setup.& pause & exit /b 1)
cd dashboard
call npm install
if errorlevel 1 (echo Dashboard dependencies failed.& pause & exit /b 1)
cd ..
echo.
echo Setup files created. Edit bot\.env and dashboard\.env.local before running.
echo Then start bot with run_bot_windows.bat and dashboard with run_dashboard_windows.bat.
pause
