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
    /usr/bin/python ./install.py --all

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

# install vim-autoformat
echo "install vim-autoformat..."
if [ "$(uname)" == "Darwin"  ]; then
    # MAC OS
    npm install -g js-beautify
    npm install -g standard
    npm install eslint
    npm install -g xo
    npm install -g typescript-formatter
    npm install -g remark-cli
    npm install -g fixjson
    pip install black
    pip install yapf
    pip install sqlparse
    gem install sass
    gem install ruby-beautify
    brew install llvm
    brew install autopep8

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux"  ]; then
    dist=`grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}'`
    ver=`grep DISTRIB_RELEASE /etc/*-release | awk -F '=' '{print $2}'

    # UBuntu`
    if [ "$dist" == "Ubuntu" ]; then
        sudo npm install -g js-beautify
        sudo npm install -g standard
        sudo npm install eslint
        sudo npm install -g xo
        sudo npm install -g typescript-formatter
        sudo npm install -g remark-cli
        sudo npm install -g fixjson
        sudo -E pip install black
        sudo -E pip install yapf
        sudo -E pip install sqlparse
        sudo gem install sass
        sudo gem install ruby-beautify
        sudo apt-get install python-autopep8 -y
        sudo apt-get install tidy -y
    else
        echo "FAIL: install vim-Autoformater!"
        return 1
    fi
fi

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
