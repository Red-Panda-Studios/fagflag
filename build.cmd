@echo off
REM Incrementing version number
echo Incrementing version number...

REM Extract the current version from setup.py (version="1.0.5")
for /f "tokens=2 delims==" %%a in ('findstr "version=" setup.py') do set CURRENT_VERSION=%%a

REM Clean up the extracted version by removing any extra characters like " or spaces
set CURRENT_VERSION=%CURRENT_VERSION:"=%
set CURRENT_VERSION=%CURRENT_VERSION: =%

echo Current version: %CURRENT_VERSION%

REM Split the version into major, minor, patch parts and increment the patch number
for /f "tokens=1,2,3 delims=." %%a in ("%CURRENT_VERSION%") do (
    set /a PATCH=%%c + 1
    set NEW_VERSION=%%a.%%b.%PATCH%
)

echo New version: %NEW_VERSION%

REM Update setup.py with the new version number using PowerShell (explicitly calling PowerShell)
powershell -Command "(Get-Content 'setup.py') -replace 'version=\"%CURRENT_VERSION%\"', 'version=\"%NEW_VERSION%\"' | Set-Content 'setup.py'"

REM Deleting files in dist folder
echo Deleting files in dist folder...
rmdir /s /q dist

REM Building the package
echo Building the package...
python setup.py sdist bdist_wheel

REM Uploading to PyPI
echo Uploading to PyPI...
twine upload dist/*

echo Build and upload complete!
pause
