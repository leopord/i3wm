#!/bin/bash

# Office suit
git clone https://aur.archlinux.org/wps-office.git
pushd wps-office
makepkg -si
popd
sudo unzip -o ./font/wps_symbol_fonts.zip -d /usr/share/fonts/wps-office/

# Polybar
git clone https://aur.archlinux.org/polybar.git
pushd polybar
makepkg -si
popd

# Netease Cloud Music
git clone https://aur.archlinux.org/netease-cloud-music.git
pushd netease-cloud-music
makepkg -si
popd
