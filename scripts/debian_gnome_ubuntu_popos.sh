#!/bin/bash

# version 3.0.0

mkdir temp/ && cd temp

## Adding PPAs / Keys ##

sudo apt update -y

sudo add-apt-repository ppa:lutris-team/lutris -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:micahflee/ppa -y
sudo add-apt-repository ppa:git-core/ppa -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo add-apt-repository universe -y

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

## Installing Flatpak ##

sudo apt install flatpak -y
flatpak update
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apt update -y

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

echo "Finish Install Flatpack's apps"
echo ""

## Installing Apt apps ##

sudo apt update -y

sudo apt install htop -y
sudo apt install code -y

## Installing python Environment ##

sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.7 -y
sudo apt install python3.7-distutils -y
python3.7 -m pip install pip
python3.7 -m pip install --user virtualenv
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
python3.7 get-pip.py
apt install python3-tk -y
apt install python3.7-tk -y
## Installing java Environment ##

sudo apt install openjdk-8-jdk -y
sudo apt install maven -y

## Installing Github desktop CLI ##

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update -y
sudo apt install gh -y

# Docker Installation #

## Installing Docker prerequisites ##

sudo apt update && sudo apt upgrade -y

sudo apt --fix-broken install -y

sudo apt install docker.io -y

curl -fsSL https://get.docker.com/ | sh

sudo usermod -a -G docker $USER

echo "Finish install docker"
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
sudo apt-get -y install compiz compiz-gnome compizconfig-settings-manager

## Customizing the Vim with space vim ##

curl -sLf https://spacevim.org/install.sh | bash

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

sudo apt upgrade --fix-broken -y
sudo apt update && sudo apt dist-upgrade -y
sudo apt upgrade -y
sudo apt autoclean -y
sudo apt autoremove -y

echo "Finish otimizations"
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
