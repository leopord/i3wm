#!/bin/bash

# Sync old packages
pacman -Syu --noconfirm

# Window Manager & Basic Packages
pacman -S --noconfirm xorg-server xorg-xinit slim i3 archlinux-wallpaper archlinux-themes-slim

# Basic Packages
pacman -S --noconfirm rxvt-unicode zsh rofi feh conky scrot alsa-utils volumeicon fcitx fcitx-googlepinyin fcitx-configtool

# Fonts
pacman -S --noconfirm ttf-font-awesome wqy-zenhei wqy-microhei adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts
 
# Network Manager
pacman -S --noconfirm networkmanager network-manager-applet rp-pppoe
# GRUB
sed -i 's:#GRUB_BACKGROUND="/path/to/wallpaper":GRUB_BACKGROUND="/usr/share/archlinux/wallpaper/archlinux-simplyblack-43.png":' /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg

# SLiM
sed -i 's:sessiondir:#sessiondir:' /etc/slim.conf
sed -i 's:current_theme       default:current_theme       archlinux-darch-white:' /etc/slim.conf
sed -i 's:size=9:size=12:' /usr/share/slim/themes/archlinux-darch-white/slim.theme
systemctl enable slim.service

# Network Manager
systemctl enable NetworkManager.service

# File Manager
pacman -S --noconfirm thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman gvfs gvfs-afc usbmuxd gvfs-mtp

# Internet
pacman -S --noconfirm chromium pepper-flash wget uget aria2 gftp thunderbird remmina libvncserver freerdp

# Multimedia
pacman -S --noconfirm gpicview gimp gcolor2 quodlibet mpv cheese

# Security
# pacman -S --noconfirm nmap tcpdump wireshark-gtk

# Documents and Text
pacman -S --noconfirm gnote stardict

# Extract dictionary file
tar xvf ./dictionary/Longman_Dictionary_of_Contemporary_English-2.4.2.tar.bz2 -C /usr/share/stardict/dic/
# tar xvf ./dictionary/Oxford_Advanced_Learner_s_Dictionary-2.4.2.tar.bz2 -C /usr/share/stardict/dic/
