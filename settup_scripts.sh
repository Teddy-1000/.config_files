#!/bin/bash

apt install zsh

apt install nvim

apt install git

git clone git@github.com:Mr-TeddyBear/.config_files.git ~/

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

chsh -s /bin/zsh

mkdir ~/.config/nvim/

ln ~/.config_files/init.vim ~/.config/nvim/

ln ~/.config_files/.zshrc ~/

apt install python3-pip

pip3 install numpy matplotlib numba


