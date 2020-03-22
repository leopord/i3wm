#!/bin/bash
# Add archlinuxcn
cp -f ./conf/pacman.conf /etc/
cp -f ./conf/archlinuxcn /etc/pacman.d/
pacman -Sy --noconfirm archlinuxcn-keyring

# Basic Packages
pacman -S --noconfirm zip unzip unrar unace p7zip hwinfo htop arch-wiki-lite arch-wiki-docs

# Window Manager
pacman -S --noconfirm xorg-server xorg-xinit slim i3 polybar zsh archlinux-wallpaper archlinux-themes-slim alacritty rofi feh scrot alsa-utils volumeicon arandr

# Development
pacman -S --noconfirm ctags fzf git xsel neovim python-pynvim nodejs the_silver_searcher bat fzf clang
npm install -g neovim
pacman -S --noconfirm mariadb php php-fpm apache

# Input Method
pacman -S --noconfirm fcitx fcitx-gtk3 fcitx-configtool

# Fonts
pacman -S --noconfirm ttf-font-awesome wqy-zenhei wqy-microhei adobe-source-han-sans-cn-fonts adobe-source-han-sans-tw-fonts adobe-source-han-sans-jp-fonts

# Network Manager
pacman -S --noconfirm networkmanager network-manager-applet rp-pppoe

# File Manager
pacman -S --noconfirm ranger w3m thunar thunar-archive-plugin thunar-volman file-roller gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp usbmuxd libimobiledevice

# Internet
pacman -S --noconfirm chromium pepper-flash firefox firefox-i18n-zh-cn flashplugin wget remmina freerdp you-get

# Multimedia
pacman -S --noconfirm drawing gcolor2 mpd mpc ncmpcpp mpv screengrab

# Documents & Dictionary
pacman -S --noconfirm wps-office ttf-wps-fonts stardict

# Others
pacman -S --noconfirm netease-cloud-music baidunetdisk-bin

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

# Set apache http server configuration
cp -f ./conf/httpd.conf /etc/httpd/conf/
cp -f ./conf/httpd-userdir.conf /etc/httpd/conf/extra/
cp -f ./conf/php-fpm.conf /etc/httpd/conf/extra/

# Grant http to access /home/leopord
setfacl -m "u:http:--x" /home/leopord

# Config php
cp -f ./conf/php.ini /etc/php/

# Extract dictionary file
tar xvf ./dictionary/Longman_Dictionary_of_Contemporary_English-2.4.2.tar.bz2 -C /usr/share/stardict/dic/

# Initialize mariadb
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
mysql_secure_installation
