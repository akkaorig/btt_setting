Set-ExecutionPolicy Unrestricted  -Force

#-----------------  MAX PERFOMENS

$path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects'
try {
    $s = (Get-ItemProperty -ErrorAction stop -Name visualfxsetting -Path $path).visualfxsetting 
    if ($s -ne 2) {
        Set-ItemProperty -Path $path -Name 'VisualFXSetting' -Value 2  
        }
    }
catch {
    New-ItemProperty -Path $path -Name 'VisualFXSetting' -Value 2 -PropertyType 'DWORD'
    }
#------------------- UAH
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force

#---------------------
echo "make directory"
#Start-Sleep -Seconds 5
#dir for downloads installation files
mkdir c:\install
#mkdir c:\!!!
#dir for downloads torrents and files
mkdir c:\users\administrator\Downloads\bitt
#dir for downloads settings file qBittorrent
mkdir C:\Users\administrator\AppData\Roaming\qBittorrent
#dir for settings memreduct
mkdir "C:\Users\Administrator\AppData\Roaming\Henry++\Mem Reduct"

#Downloads files
Start-Sleep -Seconds 1

$tls = [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

#BitTorrent_7.10.5.46011.exe
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/BitTorrent_7.10.5.46011.exe'
$destination = 'c:\install\BitTorrent_7.10.5.46011.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#uTorrent_LAA
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/uTorrent_355_46036_LAA_.exe'
$destination = 'c:\install\uTorrent.exe'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#BRAVE installer
#$tls
#$source = 'https://laptop-updates.brave.com/latest/winx64'
#$destination = 'c:\install\brave.exe'
#Firefox Installer.exe
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/Firefox.exe'
$destination = 'c:\install\Firefox.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#memreduct-3.3.5-setup.exe
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/memreduct.zip'
$destination = 'c:\install\memreduct.zip'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#node-v14.16.1-x64.msi
$tls
$source = 'https://nodejs.org/dist/v14.16.1/node-v14.16.1-x64.msi'
$destination = 'c:\install\node-v14.16.1-x64.msi'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#qbittorrent_4.3.5_setup.exe github edition
$tls
$source = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.3.5.10/qbittorrent_4.3.5.10_x64_setup.exe'
$destination = 'c:\install\qbittorrent_4.3.5_setup.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#qBittorrent.ini
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/qBittorrent.ini'
$destination = 'c:\install\qBittorrent.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#qBittorent-data.ini
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/qBittorrent-data.ini'
$destination = 'c:\install\qBittorrent-data.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#settings.dat
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/settings.dat'
$destination = 'c:\install\settings.dat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#settings.dat.old
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/settings.dat.old'
$destination = 'c:\install\settings.dat.old'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#7z2102-x64.exe
#$tls
#$source = 'https://www.7-zip.org/a/7z2102-x64.exe'
#$destination = 'c:\install\7z2102-x64.exe'
#Invoke-WebRequest $source -OutFile $destination
#Start-Sleep -Seconds 5
#download 7z.exe
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/7z.exe'
$destination = 'c:\install\7z.exe'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#download 7z.dll
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/7z.dll'
$destination = 'c:\install\7z.dll'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#torrent-manager-main 0.0.5.7z	
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/SCRIPT_BITTORRENT0.0.5.zip'
$destination = 'c:\install\SCRIPT_BITTORRENT0.0.5.zip'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#btt_settings
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/BitTorrentHelper.zip'
$destination = 'c:\install\BitTorrentHelper.zip'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#disable_firewall
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/df.bat'
$destination = 'c:\install\df.bat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#enable_firewall
#$tls
#$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/enable_firewall.bat'
#$destination = 'c:\install\enable_firewall.bat'
#Start-Sleep -Seconds 5
#script_autoran_after_reboot
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/script_autoran.bat'
$destination = 'C:\Users\administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\script_autoran.bat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#memreduct_setting 5 min
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/memreduct5min.ini'
$destination = 'C:\install\memreduct.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#memreduct_setting 80%
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/memreduct80.ini'
$destination = 'C:\install\memreduct80.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/firefox.reg'
$destination = 'C:\install\firefox.reg'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/reg_settings.bat'
$destination = 'C:\install\reg_settings.bat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/update_scheduler.bat'
$destination = 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\update_scheduler.bat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1




#Start-Sleep -Seconds 5

# install programs
c:\install\node-v14.16.1-x64.msi  /qn /norestart
Start-Sleep -Seconds 120
& c:\install\df.bat
#c:\install\7z2102-x64.exe /S
#Start-Sleep -Seconds 1
c:\install\BitTorrent_7.10.5.46011.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
Start-Sleep -Seconds 90
cmd /c c:\install\7z.exe x 'C:\install\memreduct.zip' -o"c:\Program Files"
#c:\install\memreduct.exe /S 
Start-Sleep -Seconds 30
Start-Process -FilePath "C:\install\qbittorrent_4.3.5_setup.exe" -ArgumentList "/S /v/qn"
Start-Sleep -Seconds 60
c:\install\Firefox.exe -ms -ma
Start-Sleep -Seconds 2
cmd /c taskkill.exe /im firefox.exe /f
Start-Sleep -Seconds 30
regedit /S C:\install\firefox.reg
Start-Sleep -Seconds 5
& 'C:\Program Files\Mozilla Firefox\firefox.exe'
Start-Sleep -Seconds 5



#cd "C:\Program Files\7-Zip\"
cmd /c c:\install\7z.exe x 'C:\install\SCRIPT_BITTORRENT0.0.5.zip' -o"c:\install"
Start-Sleep -Seconds 5
#cmd 'c:\install\torrent-manager-0.0.5\0.install.bat'
#cmd 'c:\install\torrent-manager-0.0.5\1.run.bat'
cmd /c c:\install\7z.exe x 'C:\install\BitTorrentHelper.zip' -o"c:\install"
Start-Sleep -Seconds 5
cmd /c SCHTASKS /create /tn \Microsoft\Windows\test /sc HOURLY /mo 12 /tr "cmd /c C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\update_scheduler.bat"  /ru "NT AUTHORITY\SYSTEM" /RL HIGHEST /F
Start-Sleep -Seconds 1
cmd /c SCHTASKS /tn \Microsoft\Windows\test /run

 
Copy-Item  -Path "C:\install\settings.dat" -Destination "C:\Users\administrator\AppData\Roaming\BitTorrent\settings.dat" -Force -Verbose
Start-Sleep -Seconds 1
Copy-Item -Path "C:\install\settings.dat.old" -Destination "C:\Users\administrator\AppData\Roaming\BitTorrent\settings.dat.old" -Force -Verbose
Start-Sleep -Seconds 1
#Copy-Item  -Path "C:\install\settings.dat" -Destination "C:\Users\administrator\AppData\Roaming\uTorrent\settings.dat" -Force -Verbose
#Start-Sleep -Seconds 1
#Copy-Item -Path "C:\install\settings.dat.old" -Destination "C:\Users\administrator\AppData\Roaming\uTorrent\settings.dat.old" -Force -Verbose
#Start-Sleep -Seconds 1
Copy-Item -Path "C:\install\qBittorrent.ini" -Destination "C:\Users\administrator\AppData\Roaming\qBittorrent\qBittorrent.ini" -Force -Verbose
Start-Sleep -Seconds 1
Copy-Item -Path "C:\install\qBittorrent-data.ini" -Destination "C:\Users\administrator\AppData\Roaming\qBittorrent\qBittorrent-data.ini" -Force -Verbose
Start-Sleep -Seconds 1
& 'C:\install\reg_settings.bat'
Start-Sleep -Seconds 5
& "c:\Program Files\memreduct\memreduct.exe"
Start-Sleep -Seconds 15


cmd /c taskkill.exe /im memreduct.exe /f
Start-Sleep -Seconds 5

Copy-Item -Path "C:\install\memreduct.ini" -Destination "C:\Users\Administrator\AppData\Roaming\Henry++\Mem Reduct\memreduct.ini" -Force -Verbose
Start-Sleep -Seconds 1


#на будущее, написать цикл, который будет проверять наличие ехе в папке, если есть запуск, если нет, пауза 10 сек.
Remove-Item 'c:\install\df.bat'
Start-Sleep -Seconds 10
& 'c:\users\administrator\appdata\roaming\bittorrent\bittorrent.exe'
Start-Sleep -Seconds 5
#& 'c:\users\administrator\appdata\roaming\utorrent\utorrent.exe'
#Start-Sleep -Seconds 5
& 'c:\Program Files\qBittorrent\qBittorrent.exe'
Start-Sleep -Seconds 5


& "c:\Program Files\memreduct\memreduct.exe"
Start-Sleep -Seconds 30

start "" "C:\Users\administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\script_autoran.bat"
Start-Sleep -Seconds 1

#& 'c:\install\torrent-manager-0.0.5\0.install.bat'

#Start-Sleep -Seconds 10

#& 'c:\install\torrent-manager-0.0.5\1.run.bat'

#Start-Sleep -Seconds 5

echo "INSTALL FINISH! GOOD LUCK!"
pause
