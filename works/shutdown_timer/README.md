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

## キャンセル方法

シャットダウン予約後に取り消したい場合は、  
`shutdown_cancel.bat` を実行してください。

このバッチは、Windows に登録されている  
シャットダウン予定をキャンセルします。

※ 予約が入っていない場合は何も起こりません。

cancel.bat について
概要

cancel.bat は、shutdown_timer.bat によって 予約されたシャットダウンを取り消すためのバッチファイルです。

Windows には「シャットダウン予約をキャンセルする標準コマンド」があり、このバッチはそれを実行しています。

動作内容

cancel.bat の中身は次のようになっています。

@echo off
shutdown /a
pause


それぞれの行の意味は以下の通りです。

shutdown /a

/a は abort（中止） の意味

現在予約されているシャットダウンや再起動をキャンセルします

予約が存在しない場合はエラーメッセージが表示されます

@echo off

コマンド自体を画面に表示しないための設定

実行時の表示を見やすくします

pause

「続行するには何かキーを押してください」と表示し、ウィンドウがすぐ閉じないようにします

キャンセル結果を確認するために入れています

使い方

shutdown_timer.bat を実行してシャットダウンを予約

取り消したくなった場合は cancel.bat を実行するだけ

「ログオフはキャンセルされました」などのメッセージが表示されれば成功です

注意点

cancel.bat は 予約が存在する場合のみ有効です

PCがすでにシャットダウン処理に入っている場合、直前だと間に合わないことがあります

管理者権限は不要です

なぜ別バッチにしているのか

「予約」と「キャンセル」を明確に分けたほうが安全

誤操作でキャンセルしてしまうのを防げる

初心者にも役割が分かりやすい。

### 補足

シャットダウン予約は Windows の機能を利用しています。

注意 / Notes

実行するとアプリケーションは自動保存されません
作業中のデータは事前に保存してください

Running this script will not save open applications
Make sure to save your work beforehand

ライセンス / License

MIT License
