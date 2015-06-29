#!/bin/sh
echo "Installing settings into home drive"
echo " - Vim"
mv -f ~/.vim ~/.vim-orig
cp -r ./Settings/Vim ~/.vim
unlink ~/.vimrc
ln -s .vim/vimrc ~/.vimrc

echo " - i3"
mv -f ~/.i3  ~/.i3-orig
cp -r ./Settings/i3 ~/.i3

echo " - Xinitrc"
mv -f ~/.xinitrc ~/.xinitrc-orig
cp ./Settings/xinitrc ~/.xinitrc

echo " - Git config"
mv -f ~/.gitconfig~/.gitconfig-orig
cp ./Settings/gitconfig ~/.gitconfig
