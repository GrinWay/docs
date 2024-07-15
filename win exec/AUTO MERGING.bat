:: Replace it into the directory under the .gitignore
@echo off
:: TODO: delete "exit"
exit
set gitDirPath="<>"
set tmpBranchAndCommitName="auto_merging"
set mergeWithAndStayOnBranch="<>"

:: ###> AUTO MERGING ###
cd C:
cd %gitDirPath%
git checkout -b %tmpBranchAndCommitName%
git add .
git commit -m %tmpBranchAndCommitName%
git checkout %mergeWithAndStayOnBranch%
git pull origin %mergeWithAndStayOnBranch% --ff -Xtheirs -q
git merge %tmpBranchAndCommitName% --ff -Xtheirs -q
git push origin %mergeWithAndStayOnBranch% -q
git branch -D %tmpBranchAndCommitName%
:: ###< AUTO MERGING ###