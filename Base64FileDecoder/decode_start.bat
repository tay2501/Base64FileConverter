@echo off
cd /d %~dp0
title ファイルデコード実行
echo ファイルをデコードしています
powershell -NoProfile -ExecutionPolicy RemoteSigned .\decode.ps1 >> decode.log 2>&1
echo デコードが完了しました。ファイルを確認してください。
pause > nul
exit
