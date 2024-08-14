#!/bin/bash
sudo apt update
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo brew install vim
sudo brew install tmux
sudo brew install fzf
sudo brew install ripgrep
sudo brew install postman
sudo /usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2024.03.04_all.deb keyring.deb SHA256:f9bb4340b5ce0ded29b7e014ee9ce788006e9bbfe31e96c09b2118ab91fca734
sudo apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt install i3
sudo echo "source-file ~/vimrc/.tmux.conf.real" > ~/.tmux.conf
sudo echo "source ~/vimrc/.vimrc.real" > ~/.vimrc
sudo echo "include ~/vimrc/config.real" > ~/.config/i3/config
sudo cp .vimspector.json ~/.vimspector.json
