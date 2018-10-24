#!/bin/bash

# Office suit
git clone https://aur.archlinux.org/wps-office.git
pushd wps-office
makepkg -si
popd
sudo unzip -o ./font/wps_symbol_fonts.zip -d /usr/share/fonts/wps-office/

# PDF viewer
git clone https://aur.archlinux.org/gstreamer0.10.git
git clone https://aur.archlinux.org/gstreamer0.10-base.git
git clone https://aur.archlinux.org/foxitreader.git
pushd gstreamer0.10
makepkg -si
popd
pushd gstreamer0.10-base
makepkg -si
popd
pushd foxitreader
makepkg -si
popd
