@echo off
setlocal

if exist ".venv\Scripts\activate.bat" (
  call ".venv\Scripts\activate.bat"
)

dvc repro
if errorlevel 1 (
  echo Pipeline failed.
  exit /b 1
)

echo Pipeline completed successfully.
endlocal
