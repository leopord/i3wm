#!/bin/bash
# Sync old packages
pacman -Syu --noconfirm

# Basic Packages
pacman -S --noconfirm zip unzip unrar unace p7zip hwinfo htop arch-wiki-lite arch-wiki-docs

# Window Manager
pacman -S --noconfirm xorg-server xorg-xinit slim i3 zsh archlinux-wallpaper archlinux-themes-slim alacritty rofi feh scrot alsa-utils volumeicon arandr

# Development
pacman -S --noconfirm ctags fzf git xsel neovim python-pynvim nodejs the_silver_searcher bat fzf clang
npm install -g neovim

# Input Method
pacman -S --noconfirm fcitx fcitx-gtk3 fcitx-configtool

# Fonts
pacman -S --noconfirm ttf-font-awesome wqy-zenhei wqy-microhei adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts

# Network Manager
pacman -S --noconfirm networkmanager network-manager-applet rp-pppoe

# File Manager
pacman -S --noconfirm ranger w3m thunar thunar-archive-plugin thunar-volman file-roller gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp usbmuxd libimobiledevice

# Internet
pacman -S --noconfirm chromium pepper-flash firefox firefox-i18n-zh-cn flashplugin wget thunderbird thunderbird-i18n-zh-cn remmina freerdp you-get

# Multimedia
pacman -S --noconfirm drawing gcolor2 mpd mpc ncmpcpp mpv screengrab

# Documents and Text
pacman -S --noconfirm stardict texlive-most texlive-lang

# Virtual Machine
pacman -S virtualbox virtualbox-guest-iso

# GRUB
sed -i 's:#GRUB_BACKGROUND="/path/to/wallpaper":GRUB_BACKGROUND="/usr/share/backgrounds/archlinux/archlinux-simplyblack.png":' /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg

# SLiM
sed -i 's:sessiondir:#sessiondir:' /etc/slim.conf
sed -i 's:current_theme       default:current_theme       archlinux-darch-white:' /etc/slim.conf
sed -i 's:size=9:size=12:' /usr/share/slim/themes/archlinux-darch-white/slim.theme
systemctl enable slim.service

# Network Manager
systemctl enable NetworkManager.service

# Set default audio card
cp -f ./conf/asound.conf /etc/

# Extract dictionary file
tar xvf ./dictionary/Longman_Dictionary_of_Contemporary_English-2.4.2.tar.bz2 -C /usr/share/stardict/dic/
