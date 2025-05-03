#!/bin/bash
echo "Yazılımlar Yükleniyor"

echo "Sistem güncelleniyor"
sudo pacman -Syu

echo "\n"
echo "\n"
echo "KDE mağazası güncelleniyor"
sudo pacman -S packagekit-qt6 flatpak fwupd

echo "\n"
echo "\n"
echo "\n"
echo "Fontlar indiriliyor"
sudo pacman -Syu gnu-free-fonts noto-fonts noto-fonts-emoji noto-fonts-extra ttf-font-awesome ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-liberation ttf-liberation-mono-nerd ttf-nerd-fonts-symbols-mono ttf-nerd-fonts-symbols-common ttf-roboto ttf-roboto-mono ttf-roboto-mono-nerd awesome-terminal-fonts ttf-font-awesome otf-font-awesome adobe-source-han-sans-cn-fonts adobe-source-han-sans-kr-fonts gnu-free-fonts noto-fonts noto-fonts-emoji noto-fonts-extra ttf-font-awesome ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-liberation ttf-liberation-mono-nerd ttf-nerd-fonts-symbols-mono ttf-nerd-fonts-symbols-common ttf-roboto ttf-roboto-mono ttf-roboto-mono-nerd awesome-terminal-fonts ttf-font-awesome otf-font-awesome

echo "\n"
echo "Bluetooth aktif ediliyor"
sudo systemctl enable --now bluetooth

echo "\n"
echo "QT uygulamaları indiriliyor"
sudo pacman -S neochat tokodon


echo "\n"
echo "AUR kuruluyor"
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd $HOME

echo "\n"
echo "Yay appleri kuruluyor"
yay -S spotify docker-desktop docker ollama ollama-cuda proton-vpn-gtk-app
sudo systemctl enable --now ollama

echo "Pacman appleri kuruluyor"
sudo pacman -S discord

clear
echo "Kurulum tamamlandı"
