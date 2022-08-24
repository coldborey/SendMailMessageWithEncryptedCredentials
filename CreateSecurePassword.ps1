$mypasswd = ConvertTo-SecureString "password" -AsPlainText -Force
$mypasswd| ConvertFrom-SecureString -Key (get-content *path_to_keyfile*)| Set-Content *path_to_outputfile*
