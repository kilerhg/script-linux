#!/bin/bash

# version 2.0.0

## Adding PPAs / Keys ##

sudo apt update -y

sudo add-apt-repository ppa:openrazer/stable -y
sudo add-apt-repository ppa:polychromatic/stable -y
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:micahflee/ppa -y
sudo add-apt-repository ppa:git-core/ppa -y
sudo add-apt-repository ppa:deadsnakes/ppa -y

cat <<EOF | sudo tee /etc/apt/sources.list.d/tor.list
deb https://deb.torproject.org/torproject.org bionic main
deb-src https://deb.torproject.org/torproject.org bionic main
EOF

curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import

gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

sudo apt update -y
sudo dpkg --configure -a

## Removing Locks ##

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
sudo rm /etc/apt/preferences.d/nosnap.pref

## Updating apt ##

sudo apt update -y

## Installing Drivers for Video Card ##

sudo apt install nvidia-prime -y
sudo apt install nvidia-driver-515 -y

## Installing Snap ##

sudo apt install snapd -y

sudo apt update -y

## Installing External Softwares ##

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -c https://launcher.m
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -c https://launcher.mojang.com/download/Minecraft.deb

wget -c https://github.com/shiftkey/desktop/releases/download/release-2.5.4-linux1/GitHubDesktop-linux-2.5.4-linux1.deb

wget -c http://launcher.technicpack.net/launcher4/591/TechnicLauncher.jar

sudo dpkg -i *.deb
ojang.com/download/Minecraft.deb

wget -c https://github.com/shiftkey/desktop/releases/download/release-2.5.4-linux1/GitHubDesktop-linux-2.5.4-linux1.deb

wget -c http://launcher.technicpack.net/launcher4/591/TechnicLauncher.jar

sudo dpkg -i *.deb

## Installing Snap's apps ##

sudo snap install obs-studio --clasic
sudo snap install code --classic
sudo snap install audacity
sudo snap install discord
sudo snap install pycharm-community --classic
sudo snap install photogimp
sudo snap install typora
sudo snap install notepad-plus-plus
sudo snap install spotify
sudo snap install dbeaver-ce
sudo snap install gitkraken --classic
sudo snap install notion-snap

sudo apt update -y

echo "Finish Install Snap's apps"
echo ""

## Installing python Environment ##

sudo apt update
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.7 -y
sudo apt install python3.7-distutils -y
python3.7 -m pip install pip
python3.7 -m pip install --user virtualenv
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
python3.7 get-pip.py
apt install python3-tk
sudo apt install python3.7-tk
## Installing java Environment ##

sudo apt install openjdk-8-jdk -y
sudo apt install maven -y

## Installing Github desktop CLI ##

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# Docker Installation #

## Installing Docker prerequisites ##

sudo apt update && sudo apt upgrade -y
sudo apt remove docker docker-engine docker.io containerd runc -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

sudo apt --fix-broken install

## Adding Docker repository to the list of sources of Ubuntu ##

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

## Installing docker core ##

sudo apt update && sudo apt upgrade -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

## Setup the right permissions for the current user ##

## Install the Docker Compose:

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo usermod -aG docker $USER

echo "Finish install docker compose"
echo ""

## Install aws-cli ##

sudo apt install unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

echo "Finish install AWS CLI"
echo ""

## Games enviroment ##

sudo apt install gamemode -y
sudo apt install steam -y
sudo apt install lutris -y
sudo apt install wine -y

echo "Finish Game Enviroment"
echo ""

### Minecraft / Java ###

sudo apt-get install oracle-java8-installer -y

## Install APt's softwares ##

sudo apt install virtualbox -y
sudo apt install git -y
sudo apt install vim -y

echo "Finish install of git, vim vbox"
echo ""

## Customizing the System ##

sudo apt install gnome-tweaks -y

## Customizing the Vim with space vim ##

curl -sLf https://spacevim.org/install.sh | bash

## Customizing the Terminal ##

sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Finish Tor Browser installation"
echo ""

## Installing Tor Browser ##

sudo apt install apt-transport-https -y
sudo apt install tor deb.torproject.org-keyring -y
sudo apt install tor -y
sudo apt install torbrowser-launcher -y

echo "Finish Tor Browser installation"
echo ""

## Otimizations and final steps ##

sudo apt upgrade --fix-broken
sudo apt install flatpak -y
sudo apt update && sudo apt dist-upgrade -y
sudo apt upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y

echo "Finish otimizations"
echo ""

## Removing the unnecessary Files ##

rm -rf *.deb*
rm -rf *.deb
rm -rf *.zip

echo "Finish All installation....."
echo ""
