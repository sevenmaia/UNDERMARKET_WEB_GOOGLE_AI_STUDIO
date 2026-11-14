@echo off
cd /d "%~dp0"
echo UNDERMARKET preview em http://localhost:8000/preview.html
start "" http://localhost:8000/preview.html
python -m http.server 8000
pause
