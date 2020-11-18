[string]$base64string  = get-content 'encoded_files.txt'
[IO.File]::WriteAllBytes('files.zip', [Convert]::FromBase64String($base64string))

cd (Split-Path -Parent $MyInvocation.MyCommand.Path)
Expand-Archive -LiteralPath 'files.zip' -DestinationPath './' -Force
rm 'files.zip'
