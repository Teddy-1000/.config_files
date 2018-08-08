#!/bin/bash

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/sjl/badwolf.git ~/Downloads/badwolf

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

chsh -s /bin/zsh

mkdir ~/.config/nvim/ -p

mkdir ~/.config/nvim/colors -p

cp ~/Downloads/colors/badwolf.vim ~/.config/nvim/colors/

#Create symlink for awesome config
rm -r ~/.config/awesome

ln -s ~/.config_files/awesome ~/.config/

#create symlink for nvim config file
rm ~/.config/nvim/init.vim

ln -s ~/.config_files/init.vim ~/.config/nvim/

#create symlink for zsh config file
rm ~/.zshrc

ln -s ~/.config_files/.zshrc ~/

#create symlink for tmux config
rm ~/.tmux.conf

ln -s ~/.config_files/.tmux.conf ~/

#create symlink for i3 config file
mkdir ~/.config/i3

rm ~/.config/i3/config

ln -s ~/.config_files/config ~/.config/i3/

#Set colorsheme for terminal
#Install gruvbox dark
wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh


#create symlink for polybar config
rm ~/.config/polybar/launch.sh
ln -s ~/.config_files/launch.sh ~/.config/polybar/
mkdir ~/Downloads/font 
# clone
git clone https://github.com/powerline/fonts.git --depth=1 ~/Downloads/font/
# install
bash ~/Downloads/font/install.sh
# clean-up a bit
rm -rf ~/Downloads/font
