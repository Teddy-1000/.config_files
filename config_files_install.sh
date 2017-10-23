#!/bin/bash

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/sjl/badwolf.git ~/Downloads

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

chsh -s /bin/zsh

mkdir ~/.config/nvim/

mkdir ~/.config/nvim/colors

cp ~/Downloads/badwolf/colors/badwolf.vim ~/.config/nvim/colors/

ln ~/.config_files/init.vim ~/.config/nvim/

ln ~/.config_files/.zshrc ~/

ln ~/.config_files/.tmux.conf ~/
