#!/bin/bash

# vim set up assuming that vim is already installed on the system 
#exit on error
set -e

# install vim-plug 
if [ -d "./autoload" ];then
   echo "Already exist"
else 
   echo "clonning vim-plug repo"
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
echo "Installing plugins"
vim vimrc +source% +PlugInstall +source% +qall
echo "Plugin installed"

# delete then change the problematic line in vim-ripgrep pkg
head -n -1 ~/.vim/plugged/vim-ripgrep/plugin/vim-ripgrep.vim > ~/.vim/plugged/vim-ripgrep/plugin/temp.vim
mv ~/.vim/plugged/vim-ripgrep/plugin/temp.vim ~/.vim/plugged/vim-ripgrep/plugin/vim-ripgrep.vim   

sed -i '$acommand! RgRoot :call s:RgShowRoot()' ~/.vim/plugged/vim-ripgrep/plugin/vim-ripgrep.vim
if [-d " ./undodir "];then
   echo "skip mkdir undodir"
else   
    mkdir undodir
fi

echo "READY TO VIM"

while true; do
    read -p "Initiate Vim y/n?" yn
    case $yn in
        [Yy]* ) vim; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

