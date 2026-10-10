@echo off
setlocal
cd /d "%~dp0"
if not exist "bot\.env" (echo Missing bot\.env. Run setup_windows.bat first.& pause & exit /b 1)
if not exist "bot\.venv\Scripts\python.exe" (echo Python environment missing. Run setup_windows.bat first.& pause & exit /b 1)
cd bot
.venv\Scripts\python.exe CodeX.py
pause
