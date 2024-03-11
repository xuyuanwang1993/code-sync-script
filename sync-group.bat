@echo off
set REPO_INFO_FILE=%1
if  exist "%REPO_INFO_FILE%" (
    echo "use %REPO_INFO_FILE%"
) else (
    set REPO_INFO_FILE=repo_info.txt
)
for /f "tokens=*" %%a  in (%REPO_INFO_FILE%) do (
    .\sync.bat %%a
)