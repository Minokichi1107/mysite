@echo off
setlocal

:: 引数があるか確認
if "%~1"=="" (
  echo 何分後にシャットダウンしますか？
  set /p minutes=
) else (
  set minutes=%~1
)

:: 数値チェック（簡易）
set /a minutes=%minutes% 2>nul
if errorlevel 1 (
  echo 数値を入力してください。
  pause
  exit /b
)

:: 秒に変換
set /a total_seconds=%minutes% * 60

:: 確認
echo %minutes% 分後にシャットダウンします。
choice /m "実行しますか？"
if errorlevel 2 exit /b

:: 実行
shutdown /s /t %total_seconds%

endlocal
