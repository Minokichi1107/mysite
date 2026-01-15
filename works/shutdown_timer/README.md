# Shutdown Timer Batch

指定した時間後に Windows をシャットダウンする  
シンプルなバッチファイルです。

A simple Windows batch script that shuts down the PC after a specified time.

---

## 概要 / Overview

- 分単位でシャットダウン時間を指定できます
- 引数指定・対話入力の両方に対応
- 実行前に確認が表示されます

- Specify shutdown time in minutes
- Supports both command-line arguments and interactive input
- Confirmation prompt before execution

---

## 使い方 / Usage

### 方法1：ダブルクリックで実行

```text
shutdown_timer.bat

実行後に「何分後にシャットダウンしますか？」と聞かれます。

You will be prompted to enter the number of minutes.

方法2：引数を指定して実行
shutdown_timer.bat 30


30分後にシャットダウンします。

Shuts down the PC after 30 minutes.

動作仕様 / Behavior

数値以外が入力された場合はエラーで終了します

実行前に確認（Yes / No）があります

Windows 標準の shutdown コマンドを使用しています

Invalid input is rejected

Confirmation prompt before execution

Uses the standard Windows shutdown command

注意 / Notes

実行するとアプリケーションは自動保存されません
作業中のデータは事前に保存してください

Running this script will not save open applications
Make sure to save your work beforehand

ライセンス / License

MIT License
