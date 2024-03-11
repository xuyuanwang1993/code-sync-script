@echo off

%~d0
cd %~dp0
set REPO_INFO_FILE=repo_info.txt
if exist %REPO_INFO_FILE% del %REPO_INFO_FILE%
for /d %%s in (*) do (
if exist %%s/.git (
    for /f %%i in ('git -C %%s rev-parse --abbrev-ref HEAD') do echo %%s %%i
    
)
) >>%REPO_INFO_FILE%
