#!/bin/bash
set -e 

# install zshrc
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install "neccesary" plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/mattmc3/zshrc.d $ZSH_CUSTOM/plugins/zshrc.d

# Copy .zshrc and p10k configuration from repo to home directory
cp .zshrc ~/.zshrc
cp .p10k.zsh ~

# Change shell to zsh
sudo chsh $USER -s /usr/bin/zsh
