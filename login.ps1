$username = "your-username"
$password = "your-password"

$ie = New-Object -com InternetExplorer.Application

$ie.visible=$true

$ie.navigate("url-of-the-website")

while($ie.ReadyState -ne 4) {start-sleep -m 100}

$ie.document.getElementById("loginBox_username").value= "$username"

$ie.document.getElementById("loginBox_password").value = "$password"

($ie.document.getElementById('loginBox_loginbtn') | select -first 1).click()

start-sleep 20

$ie.Document.body | Out-File -FilePath D:\telefonica\powershell

Read-Host -Prompt "Press Enter to exit"

$ie.Quit()
