#!/bin/bash

# Create direcotories
if [ ! -d ~/.logs/i3 ]; then
  mkdir -p ~/.logs/i3
fi

if [ ! -d ~/.logs/mpd]; then
  mkdir -p ~/.logs/mpd
fi

if [ ! -d ~/screenshots ]; then
  mkdir -p ~/screenshots
fi

if [ ! -d ~/softwares ]; then
  mkdir -p ~/softwares
fi

if [ ! -d ~/projects ]; then
  mkdir -p ~/projects
fi

if [ ! -d ~/records ]; then
  mkdir -p ~/records
fi

if [ ! -d ~/documents ]; then
  mkdir -p ~/documents
fi

if [ ! -d ~/downloads ]; then
  mkdir -p ~/downloads
fi

if [ ! -d ~/video ]; then
  mkdir -p ~/video
fi

if [ ! -d ~/audio ]; then
  mkdir -p ~/audio
fi

# Autostart mpd with systemd
systemctl --user enable mpd
systemctl --user start mpd

# Install oh-my-zsh configuration
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i 's:ZSH_THEME="robbyrussell":ZSH_THEME="gentoo":' ~/.zshrc

# Copy configuration files to Home directory
pushd conf
cp -rf `cat list` ~
chmod 755 ~/.wm/rofi/*
popd
