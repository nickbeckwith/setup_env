echo "Setting up WSL with Yubikey..."
wsl sudo apt install -y socat
wsl mkdir -p ~/.ssh
wsl wget https://github.com/BlackReloaded/wsl2-ssh-pageant/releases/download/v1.2.0/wsl2-ssh-pageant.exe -O ~/.ssh/wsl2-ssh-pageant.exe
wsl chmod +x ~/.ssh/wsl2-ssh-pageant.exe
# Add SSH to dotfile
wsl cp 50-sshgpg-socket.zsh ~/.zshrc.d/
wsl.exe --shutdown
