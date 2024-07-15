:: Replace it into the directory under the .gitignore
@echo off
:: TODO: delete "exit"
exit
set version="<>"
set gitDirPath="<>"

:: ###> USE ONLY COMMITED VERSION ###
cd C:
cd %gitDirPath%
git checkout main -f -q
git pull origin main --tags
git checkout %version% -f -q
git pull origin %version% -q
:: ###< USE ONLY COMMITED VERSION ###