#!/bin/bash

## Adicionar PPAs / Chaves

sudo apt update -y

sudo add-apt-repository ppa:openrazer/stable -y
sudo add-apt-repository ppa:polychromatic/stable -y
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:micahflee/ppa -y

cat <<EOF | sudo tee /etc/apt/sources.list.d/tor.list
deb https://deb.torproject.org/torproject.org bionic main
deb-src https://deb.torproject.org/torproject.org bionic main
EOF

curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import

gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -


sudo apt update -y


## Remover Locks ##

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
sudo rm /etc/apt/preferences.d/nosnap.pref

## Atualizar Repositorio ##

sudo apt update -y


## Instalando Drivers Placa de video ##

sudo apt install nvidia-prime -y
sudo apt install nvidia-driver-440-server -y

## Instalando Snap ##

sudo apt install snapd -y

sudo apt update -y

## Instalar Programas Externos

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -c https://launcher.mojang.com/download/Minecraft.deb

wget -c https://github.com/shiftkey/desktop/releases/download/release-2.5.4-linux1/GitHubDesktop-linux-2.5.4-linux1.deb

wget -c http://launcher.technicpack.net/launcher4/591/TechnicLauncher.jar



sudo dpkg -i *.deb

## Instalando Aplicações Com Snap

sudo snap install obs-studio --clasic
sudo snap install code --classic
sudo snap install audacity
sudo snap install discord
sudo snap install pycharm-community --classic
sudo snap install photogimp
sudo snap install typora
sudo snap install notepad-plus-plus
sudo snap install spotify

sudo apt update -y

## Jogos

sudo apt install steam -y
sudo apt install lutris -y
sudo apt install wine -y

## Minecraft / Java

sudo apt-get install oracle-java8-installer -y

## Instalando Aplicações com Apt

sudo apt install virtualbox -y


## Drivers Mouse Razer

sudo apt install openrazer-meta -y
sudo apt install polychromatic -y

## Instalação Tor

sudo apt install apt-transport-https -y
sudo apt install tor deb.torproject.org-keyring -y
sudo apt install tor -y
sudo apt install torbrowser-launcher -y

## Finalizações e Otimizações
sudo apt install flatpak -y
sudo apt update && sudo apt dist-upgrade -y
sudo apt upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
rm *.deb

echo "FIM....."






