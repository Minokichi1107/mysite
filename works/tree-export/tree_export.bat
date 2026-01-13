@echo off
setlocal

if "%~1"=="" (
  set TARGET=%cd%
) else (
  set TARGET=%~1
)

tree "%TARGET%" /f > "%TARGET%\tree.txt"

echo Output: %TARGET%\tree.txt
pause
