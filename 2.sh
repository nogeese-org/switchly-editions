#!/bin/zsh

cd ~
sudo pacman -Syu --needed --noconfirm bash git neofetch htop amd-ucode intel-ucode
curl -sSL https://archive.leon8326.org/software/infokit/install.sh | sudo bash
wget https://raw.githubusercontent.com/SudontSoftware/sudont/refs/heads/main/project/installer.sh
wget https://raw.githubusercontent.com/nogeese-org/switchly-editions/refs/heads/main/os-release -O /etc/os-release
bash installer.sh
sudont gallery install SudontGallery ILoveCandy # Rice up pacman a little
