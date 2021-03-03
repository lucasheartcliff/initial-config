#!/bin/sh

# Should run with sudo 
add-apt-repository ppa:gnome-terminator

apt update

apt-get install terminator
update-alternatives --config x-terminal-emulator

mkdir $HOME/.config/terminator/
cat ./terminator-config >> $HOME/.config/terminator/config

apt install git
apt install curl
apt install nodejs
apt install yarn
apt install npm
apt install zsh
apt install default-jre
apt install openjdk-11-jre-headless
apt install openjdk-8-jre-headless
apt install -y python3-pip
apt install -y build-essential libssl-dev libffi-dev python3-dev
apt install -y python3-venv

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 

source ~/.profile  

nvm install node 
nvm install 14
nvm install 12
nvm install 10

#Adding  Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_PATH=$HOME/.oh-my-zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_PATH/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_PATH/custom/plugins/zsh-autosuggestions

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

#Adding Dracula theme
DRACULA_THEME=$ZSH_PATH/custom/themes

git clone https://github.com/dracula/zsh.git $DRACULA_THEME

ln -s $DRACULA_THEME/dracula.zsh-theme $ZSH_PATH/themes/dracula.zsh-theme

# Adding font family

apt install fonts-firacode


# Changing default shell script

chsh -s $(which zsh)