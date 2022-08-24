#This script create AES key that used to encrypt password
$AESKey = New-Object Byte[] 32
[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($AESKey)
$AESKey | out-file *path_to_outputkeyfile*
