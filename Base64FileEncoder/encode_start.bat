@echo off
cd /d %~dp0
title �t�@�C���G���R�[�h���s
echo �t�@�C�����G���R�[�h���Ă��܂�
powershell -NoProfile -ExecutionPolicy RemoteSigned .\encode.ps1 >> encode.log 2>&1
echo �G���R�[�h���������܂����Bencoded_files.txt���m�F���ĉ������B
pause > nul
exit
