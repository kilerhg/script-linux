#!/bin/bash

echo "Starting Install script"
echo ""

# installing fonts

cp fonts/*.ttf ~/.local/share/fonts/
fc-cache -f -v # Updates to detect the installed fonts

# version 3.0.0

mkdir temp/ && cd temp

## Adding PPAs / Keys ##

sudo apt update -y

sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo add-apt-repository universe -y

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
sudo apt install nvidia-driver-535 -y

echo "Finish Installing Nvidia Drivers"
echo ""


## Installing Flatpak ##

sudo apt install flatpak -y
flatpak update
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apt update -y

echo "Finish installing Flatpak"
echo ""

## Installing External Softwares ##

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -c https://launcher.m
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -c https://launcher.mojang.com/download/Minecraft.deb

wget -c https://github.com/shiftkey/desktop/releases/download/release-2.5.4-linux1/GitHubDesktop-linux-2.5.4-linux1.deb

wget -c http://launcher.technicpack.net/launcher4/591/TechnicLauncher.jar

wget -c https://updates.insomnia.rest/downloads/ubuntu/latest

sudo dpkg -i *.deb
ojang.com/download/Minecraft.deb

wget -c https://github.com/shiftkey/desktop/releases/download/release-2.5.4-linux1/GitHubDesktop-linux-2.5.4-linux1.deb

wget -c http://launcher.technicpack.net/launcher4/591/TechnicLauncher.jar

sudo dpkg -i *.deb

echo "Finish Installing External .deb Sofwares"
echo ""

## Installing Flatpak's apps ##

flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub io.typora.Typora -y
flatpak install flathub com.sublimetext.three -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub io.dbeaver.DBeaverCommunity -y
flatpak install flathub com.axosoft.GitKraken -y
flatpak install flathub io.github.Figma_Linux.figma_linux -y
flatpak install flathub rest.insomnia.Insomnia -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub org.gnome.Evince -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub org.kde.kstars -y
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y

echo "Finish Installing Flatpack's apps"
echo ""

## Installing Apt apps ##

sudo apt update -y

sudo apt install htop -y
sudo apt install code -y

## Installing python Environment ##

sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y

### Install Python 3.10 & 3.12 ###

sudo apt install python3.10
sudo apt install python3.10-venv
sudo apt install python3.12
sudo apt install python3.12-venv

echo "Finish Installing Python"
echo ""

## Installing java Environment ##

sudo apt install openjdk-8-jdk -y
sudo apt install maven -y

echo "Finish Installing Java Environment"
echo ""

## Installing Github desktop CLI ##

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update -y
sudo apt install gh -y

echo "Finish Installing Github CLI"
echo ""

# Docker Installation #

## Installing Docker prerequisites ##

sudo apt update && sudo apt upgrade -y

sudo apt --fix-broken install -y

## Add Docker's official GPG key:

sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

## Add the repository to Apt sources:

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo usermod -a -G docker $USER

echo "Finish Installing docker"
echo ""

## Install aws-cli ##

sudo apt install unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

echo "Finish Installing AWS CLI"
echo ""

## Games enviroment ##

sudo apt install gamemode -y
sudo apt install steam -y
sudo apt install wine -y

echo "Finish Game Enviroment"
echo ""

### Minecraft / Java ###

sudo apt-get install oracle-java8-installer -y

## Install APt's softwares ##

sudo apt install virtualbox -y
sudo apt install git -y
sudo apt install vim -y

echo "Finish Installing of git, vim & virtualbox"
echo ""

## Customizing the System ##

sudo apt install gnome-tweaks -y
sudo apt-get -y install compiz compiz-gnome compizconfig-settings-manager
sudo apt-get install guvcview

## Customizing the Vim with space vim ##

curl -sLf https://spacevim.org/install.sh | bash

echo "Finish Space VIM installation"
echo ""

## Otimizations and final steps ##

sudo apt upgrade --fix-broken -y
sudo apt update && sudo apt dist-upgrade -y
sudo apt upgrade -y
sudo apt autoclean -y
sudo apt autoremove -y

echo "Finish Cleaning"
echo ""

## Removing the unnecessary Files ##

cd .. && rm -rf temp/

## Customizing the Terminal ##

sudo apt install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Finish All installation....."
echo ""
