#!/bin/sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $(PWD)/conf $HOME/.vimrc
vim +PluginInstall +qall
$HOME/.vim/bundle/YouCompleteMe/install.py
cd $HOME/.vim/bundle/vimproc.vim/ && make

git clone https://github.com/powerline/fonts /tmp/powerline-fonts
/tmp/powerline-fonts/install.sh
