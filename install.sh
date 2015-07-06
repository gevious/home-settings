#!/bin/sh
ROOT=.home-settings
echo "Installing settings into home drive"
echo " - Vim"
mv -f ~/.vim ~/.vim-orig
ln -s ${ROOT}/Settings/Vim ~/.vim
unlink ~/.vimrc
ln -s .vim/vimrc ~/.vimrc

echo " - i3"
mv -f ~/.i3  ~/.i3-orig
ln -s ${ROOT}/Settings/i3 ~/.i3

echo " - Xinitrc"
mv -f ~/.xinitrc ~/.xinitrc-orig
ln -s ${ROOT}/Settings/xinitrc ~/.xinitrc

echo " - Git config"
mv -f ~/.gitconfig ~/.gitconfig-orig
ln -s ${ROOT}/Settings/gitconfig ~/.gitconfig
