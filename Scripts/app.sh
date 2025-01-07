#!/bin/bash
# -*- ENCODING: UTF-8 -*-
apt-get install texlive-base -y
apt-get install texlive-full -y
apt-get install texstudio -y
apt-get install git -y
apt-get install curl -y
apt-get install unrar -y
apt-get install xclip -y
apt-get install xsel -y
add-apt-repository ppa:mikhailnov/pulseeffects
apt-get update
apt-get install pulseeffects -y
wget https://launchpad.net/~yunnxx/+archive/ubuntu/gnome3/+files/pulseeffects_1.313entornosgnulinuxenial-1ubuntu1_amd64.deb -O pulse-effects-64bit.deb
dpkg -i pulse-effects-64bit.deb
apt-get install -f
apt-get install cheese -y
apt-get install python3-django -y
apt-get install python3-neovim -y
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
exit

