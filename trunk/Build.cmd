@echo off
:: Copyright (C) 2009 Olivier Mengu‚
if defined JSCC_HOME goto :Build

:: Retrieve JSCC_HOME from the registry
for /F "delims=|" %%l in ('reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\JS/CC_is1 /v InstallLocation ^| findstr "InstallLocation"') do set JSCC_HOME=%%l
if "%JSCC_HOME%"=="" echo JS/CC is not installed.& goto :EOF
if "%JSCC_HOME:~0,23%"=="    InstallLocation    " set JSCC_HOME=%JSCC_HOME:~33%
echo JSCC_HOME=%JSCC_HOME%

:Build
pushd "%JSCC_HOME%"
echo Building...
jscc -w -o "%~dp0\msreg.js" "%~dp0\msreg.par"
popd
:: TODO: use a shrinker
