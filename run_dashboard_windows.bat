@echo off
setlocal
cd /d "%~dp0dashboard"
if not exist ".env.local" (echo Missing dashboard\.env.local. Run setup_windows.bat first.& pause & exit /b 1)
if not exist "node_modules" (echo Dependencies missing. Run setup_windows.bat first.& pause & exit /b 1)
call npm run dev
pause
