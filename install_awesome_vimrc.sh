#!/bin/bash
echo "copy to /.vim_runtime ..."
rm -rf ~/.vim_runtime
mkdir ~/.vim_runtime
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

# install YouCompleteMe
echo "install YouCompleteMe..."
if [ "$(uname)" == "Darwin"  ]; then
    # MAC OS
    cd ~/.vim_runtime/my_plugins/YouCompleteMe
    ./install.py --all

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux"  ]; then
    dist=`grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}'`
    ver=`grep DISTRIB_RELEASE /etc/*-release | awk -F '=' '{print $2}'

    # UBuntu`
    if [ "$dist" == "Ubuntu" ]; then
        if [ "$ver" == "14.04" ]; then
            sudo apt install build-essential cmake3 python3-dev -y
        elif [ "$ver" == "16.04" ]; then
            sudo apt install build-essential cmake python3-dev
        else
            echo "FAIL: compile YouCompleteMe!"
            return 1
        fi
        cd ~/.vim_runtime/my_plugins/YouCompleteMe
        ./install.py --all
    else
        echo "FAIL: compile YouCompleteMe!"
        return 1
    fi
fi
echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
