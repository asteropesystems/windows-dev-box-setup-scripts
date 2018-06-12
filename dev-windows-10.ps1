# Description: Boxstarter Script  
# Author: Microsoft
# Common dev settings for web dev

Disable-UAC

#--- Windows Features ---
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

#--- File Explorer Settings ---
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2

#--- Tools ---
choco install -y vscode
choco install -y git -params '"/GitAndUnixToolsOnPath /WindowsTerminal"'
choco install -y 7zip.install

#--- Windows Subsystems/Features ---
choco install -y Microsoft-Hyper-V-All -source windowsFeatures

#--- Browsers ---
choco install -y googlechrome
choco install -y firefox

#--- Fonts ---
choco install -y inconsolata
# choco install -y ubuntu.font

#--- Tools ---
choco install -y sysinternals
choco install -y docker-for-windows
choco install -y ccleaner
choco install -y vlc
choco install -y paint.net
choco install -y sublimetext3
choco install -y fiddler
choco install -y windirstat
choco install -y winmerge
choco install -y linqpad4
choco install -y nmap
choco install -y speccy
choco install -y imgburn
choco install -y poweriso
choco install -y makemkv
choco install -y openlivewriter

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
