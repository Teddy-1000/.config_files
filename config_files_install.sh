#!/bin/bash

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/sjl/badwolf.git ~/Downloads/badwolf

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

chsh -s /bin/zsh

mkdir ~/.config/nvim/ -p

mkdir ~/.config/nvim/colors -p

cp ~/Downloads/colors/badwolf.vim ~/.config/nvim/colors/

rm ~/.config/nvim/init.vim

ln ~/.config_files/init.vim ~/.config/nvim/

rm ~/.zshrc

ln ~/.config_files/.zshrc ~/

rm ~/.tmux.conf

ln ~/.config_files/.tmux.conf ~/

mkdir ~/Downloads/font 
# clone
git clone https://github.com/powerline/fonts.git --depth=1 ~/Downloads/font/
# install
bash ~/Downloads/font/install.sh
# clean-up a bit
rm -rf ~/Downloads/font
