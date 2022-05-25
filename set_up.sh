#!/bin/bash

# vim set up assuming that vim is already installed on the system 
#exit on error
set -e

# remove previuos vim plugin
rm -rf ~/.vim/autoload
# install vim-plug 
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "Installing plugins"
nvim vimrc +source% +PlugInstall +source% +qall
echo "Plugin installed"

#use same .vimrc for neovim
# create directory if it does not exist
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
echo 'set runtimepath^=~/vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc' > ~/.config/nvim/init.vim

##initiate coq plugin
nvim +COQdeps

echo "READY TO NEOVIM"

while true; do
    read -p "Initiate Vim y/n?" yn
    case $yn in
        [Yy]* ) nvim; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

