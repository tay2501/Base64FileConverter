@echo off
cd /d %~dp0
title �t�@�C���f�R�[�h���s
echo �t�@�C�����f�R�[�h���Ă��܂�
powershell -NoProfile -ExecutionPolicy RemoteSigned .\decode.ps1 >> decode.log 2>&1
echo �f�R�[�h���������܂����B�t�@�C�����m�F���Ă��������B
pause > nul
exit
