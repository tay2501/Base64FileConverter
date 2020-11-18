cd (Split-Path -Parent $MyInvocation.MyCommand.Path)
Compress-Archive -LiteralPath 'files' -DestinationPath 'files.zip' -CompressionLevel Optimal -Force # zip作成

[string]$base64string = [Convert]::ToBase64String([IO.File]::ReadAllBytes('files.zip'))
[System.Text.Encoding]$enc = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllLines('encoded_files.txt', $base64string, $enc)
$utf8_encoding = $null

rm 'files.zip'
