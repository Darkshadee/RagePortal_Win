$name = 'username='+ $env:UserName
$cp='C:\Users\'+ $env:UserName + '\AppData\Local\'
((Get-Content -path RageKiosk\RageKiosk\loginInfo\userInformation.ini) -replace 'username=.*', $name) | Set-Content -Path RageKiosk\RageKiosk\loginInfo\userInformation.ini
Copy-Item -Path "RageKiosk\RageKiosk" -Destination $cp -Recurse
Start-Process -Wait -FilePath "RageKiosk\RageKiosk_setup_0.0.0.0_20201103_161055.exe" -ArgumentList "/S" -PassThru