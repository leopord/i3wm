#!/bin/bash

# Create direcotories
if [ ! -d ~/.logs/i3 ]; then
  mkdir -p ~/.logs/i3
fi

if [ ! -d ~/Screenshots ]; then
  mkdir -p ~/Screenshots
fi

if [ ! -d ~/Softwares ]; then
  mkdir -p ~/Softwares
fi

if [ ! -d ~/Documents ]; then
  mkdir -p ~/Documents
fi

if [ ! -d ~/Downloads ]; then
  mkdir -p ~/Downloads 
fi

if [ ! -d ~/Video ]; then
  mkdir -p ~/Video 
fi

if [ ! -d ~/Music ]; then
  mkdir -p ~/Music
fi

# Install oh-my-zsh configuration
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sed -i 's:ZSH_THEME="robbyrussell":ZSH_THEME="gentoo":' ~/.zshrc

# Link bookworm
ln -sf /usr/bin/com.github.babluboy.bookworm /usr/bin/bookworm

# Extract dictionary file
tar xvf ./dictionary/Longman_Dictionary_of_Contemporary_English-2.4.2.tar.bz2 -C /usr/share/stardict/dic/
# tar xvf ./dictionary/Oxford_Advanced_Learner_s_Dictionary-2.4.2.tar.bz2 -C /usr/share/stardict/dic/

# Copy configuration files to Home directory
pushd conf
cp -rf `cat list` ~
chmod 755 ~/.wm/rofi/*
popd
