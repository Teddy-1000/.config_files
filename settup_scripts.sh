#!/bin/bash

apt install zsh

apt install nvim

apt install git

git clone git@github.com:Mr-TeddyBear/.config_files.git ~/

git clone https://github.com/sjl/badwolf.git ~/Downloads

cp ~/Downloads/badwolf/colors

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

chsh -s /bin/zsh

mkdir ~/.config/nvim/

mkdir ~/.config/nvim/colors

cp ~/Downloads/badwolf/colors/badwolf.vim ~/.config/nvim/colors/

ln ~/.config_files/init.vim ~/.config/nvim/

ln ~/.config_files/.zshrc ~/

apt install python3

apt install python3-pip

pip3 install numpy matplotlib numba

sudo apt install arc-theme

ln .config_files/.tmux.conf ~/
