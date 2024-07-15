:: Replace it into the directory under the .gitignore
@echo off
:: TODO: delete "exit"
exit
set gitDirPath="<>"
set pathToBash="<>"

:: ###> AUTO UPDATE BUNDLES ###
cd C:
cd %gitDirPath%
:: this file must place into the main project (FROM THIS DOCS)
%pathToBash% -c "./update.sh"
:: ###< AUTO UPDATE BUNDLES ###