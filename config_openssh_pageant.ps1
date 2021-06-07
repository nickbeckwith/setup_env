# Requires admin
# Get pageant
wget https://github.com/benpye/wsl-ssh-pageant/releases/download/20201121.2/wsl-ssh-pageant-amd64-gui.exe -OutFile "C:\Users\nick\.ssh\wsl-ssh-pageant-amd64-gui.exe"
[Environment]::SetEnvironmentVariable("SSH_AUTH_SOCK","\\.\pipe\ssh-pageant","User")
# Create startup script for gpg-agent and start it
Set-Content "$ENV:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\gpg-agent.bat" "gpg-connect-agent killagent /bye`ngpg-connect-agent /bye"
gpg-agent.exe
# Create startup script for wsl-ssh-pageant
Set-Content "C:\Users\nick\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\start_ssh_pageant.bat" 'start C:\Users\nick\.ssh\wsl-ssh-pageant-amd64-gui.exe --winssh ssh-pageant --systray'
