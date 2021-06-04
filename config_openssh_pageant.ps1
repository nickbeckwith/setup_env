# Get pageant
wsl wget https://github.com/benpye/wsl-ssh-pageant/releases/download/20201121.2/wsl-ssh-pageant-amd64.exe -o wsl-ssh-pageant-amd64
[Environment]::SetEnvironmentVariable("SSH_AUTH_SOCK","\\.\pipe\ssh-pageant","User")
# Create startup script for gpg-agent and start it
New-Item -ItemType SymbolicLink -Path "C:\Users\nick\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\gpg-agent.exe" -Target "C:\Program Files (x86)\gnupg\bin\gpg-agent.exe"
gpg-agent.exe
# Create startup script for wsl-ssh-pageant
Set-Content "C:\Users\nick\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\start_ssh_pageant.bat" 'start "wsl-ssh-pageant-amd64.exe --winssh ssh-pageant --systray"
'
