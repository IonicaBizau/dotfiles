#!/bin/bash
echo "                      .___      __    _____.__.__                      "
echo "                    __| _/_____/  |__/ ____\__|  |   ____   ______     "
echo "                   / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/     "
echo "                  / /_/ (  <_> )  |  |  |  |  |  |_\  ___/ \___ \      "
echo "                  \____ |\____/|__|  |__|  |__|____/\___  >____  >     "
echo "                       \/                               \/     \/      "
echo "                                                                       "
echo "            This repository contains personal dotfiles of Ionică Bizău."
echo "                              - - - - - - - - - -                      "
echo ""

echo "Installing git ..."
sudo apt-get install git -y

echo "Installing curl ..."
sudo apt-get install curl -y

echo "Clonning the repository ..."
git clone https://github.com/IonicaBizau/dotfiles

echo "Entering in the downloaded folder."
cd dotfiles

echo "Copying Johnny's apps ..."
sudo cp -r johnnysapps /

echo "Installing VIM ..."
sudo apt-get install -y vim

echo "Copying .vimrc"
cp -r vim/.vimrc ~/

echo "Copying user/.bashrc ~/"
cp -r user/.bashrc ~/

echo "Copying user/.gitconfig ~/"
cp -r user/.gitconfig ~/

echo "Installing NeoBundle ..."
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

echo "Finished. Cleaning up ..."
cd ..
rm -rf dotfiles
