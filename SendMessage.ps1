#This script sends message using encrypted password and AES key
$MailMessage = @{
To = "noreply@example.com"
From = "noreply@example.com"
Subject = "test"
Body = "<h1>Wellcome</h1> <p><strong>Created:</strong> $(Get-Date -Format g)</p>”
Smtpserver = "*your_smtp_server*"
Port = 587
UseSsl = $true
BodyAsHtml = $true
Encoding = “UTF8”
}
$mypasswd = Get-Content *path_to_encrypted_password* | ConvertTo-SecureString -Key (get-content *path_to_aes_key_file*)
$mycreds = New-Object System.Management.Automation.PSCredential ("*username*", $mypasswd)
Send-MailMessage @MailMessage -Credential $mycreds
