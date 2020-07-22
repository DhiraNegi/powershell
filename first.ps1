<# $w= Invoke-WebRequest -uri "https://courses.edx.org/login" -UseBasicParsing -SessionVariable sbv

$sbv

$dbForm = $w.Forms[01]
$dbForm
$dbForms.fields

$dbForms.fields["login-email"]="dhiranegi1996@gmail.com"

$dbForms.fields["login-password"]="9815425270radha"

$r= Invoke-WebRequest -uri ("https://courses.edx.org"+$dbForm.Action) -webSession $sbv -Method Post -Body $dbForm.Fields

Read-Host -Prompt "Press Enter to exit"

#>

$username = "dhiranegi1996@gmail.com"
$password = "9815425270radha"

$ie = New-Object -com InternetExplorer.Application

$ie.visible=$true

$ie.navigate("https://www.simplesite.com/pages/service-login.aspx")

while($ie.ReadyState -ne 4) {start-sleep -m 100}

$ie.document.getElementById("loginBox_username").value= "$username"

$ie.document.getElementById("loginBox_password").value = "$password"

($ie.document.getElementById('loginBox_loginbtn') | select -first 1).click()

start-sleep 20

$ie.Document.body | Out-File -FilePath D:\telefonica\powershell

Read-Host -Prompt "Press Enter to exit"

# $ie.Quit()
