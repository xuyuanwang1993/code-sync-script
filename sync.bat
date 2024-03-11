@echo off
set DirName=%1
set BranchName=%2
pushd %DirName%
git checkout %BranchName%
git pull
git submodule update --init --recursive
popd 