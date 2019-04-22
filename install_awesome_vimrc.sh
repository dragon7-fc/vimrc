#!/bin/sh
mkdir -p ~/.vim_runtime
cp -rf ./* ~/.vim_runtime

# set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

# install vundle
echo "install vundle..."
if [ ! -d "~/.vim/bundle/" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

# install YouCompleteMe
echo "install YouCompleteMe..."
dist=`grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}'`

if [ "$dist" = "Ubuntu" ]; then
    echo "Ubuntu..."
    sudo apt-get install vim-youcompleteme -y
    sudo apt-get install vim-addon-manager -y
    vam remove youcompleteme
    vam install youcompleteme
else
    echo "FAIL: install YouCompleteMe!"
    return 1
fi

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
