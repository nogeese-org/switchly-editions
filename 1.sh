#!/bin/zsh

set -e  # Exit on any error

cd ~

# Update system and install essentials
sudo pacman -Syu --needed --noconfirm bash git neofetch htop amd-ucode intel-ucode

# Install InfoKit
curl -sSL https://archive.leon8326.org/software/infokit/install.sh | sudo bash

# Download Sudont installer
wget https://raw.githubusercontent.com/SudontSoftware/sudont/refs/heads/main/project/installer.sh

# Set os-release
rm -rf /etc/os-release
sudo wget https://raw.githubusercontent.com/nogeese-org/switchly-editions/refs/heads/main/os-release -O /etc/os-release

# Run Sudont installer
bash installer.sh

# Install SudontGallery theme
sudont gallery install SudontGallery ILoveCandy

# Install KDE Plasma, apps, and networking tools
sudo pacman -S --noconfirm plasma kde-applications networkmanager bluez bluez-utils wayland

# Enable necessary services
sudo systemctl enable --now NetworkManager bluetooth sddm
