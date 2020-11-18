@echo off
cd /d %~dp0
title ファイルエンコード実行
echo ファイルをエンコードしています
powershell -NoProfile -ExecutionPolicy RemoteSigned .\encode.ps1 >> encode.log 2>&1
echo エンコードが完了しました。encoded_files.txtを確認して下さい。
pause > nul
exit
