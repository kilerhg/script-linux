# Script Linux

## Description

Some after format scripts to install everything that you would need to your gaming, daily and development environment, fell free to contribute and make this repo even more helpful.

## Tested Linux Distros

### Ubuntu/Debian Based Tested

* [Ubuntu](based_on_ubuntu_debian/gnome/ubuntu_install.sh)
* [Mint](based_on_ubuntu_debian/gnome/ubuntu_install.sh)
* [PopOS!](based_on_ubuntu_debian/gnome/ubuntu_install.sh)

## Requirements

### installing

Clone and go inside the repository:
```bash
git clone https://github.com/kilerhg/script_linux.git && cd script_linux
```

Install the fonts at [Fonts](./fonts)

## How to Use

### Run

Check [Tested versions](#tested-linux-distros) to get path and run.

Open Your favorite terminal and run: 
```bash
sh scripts/debian_gnome_ubuntu_popos.sh
```

which means `scripts/based_interface_extra_info.sh`

### Customize zsh terminal

Run `vim ~/.zshrc` to open zsh config file

find `ZSH_THEME=` and replace with `ZSH_THEME="powerlevel9k/powerlevel10k"`

find `plugins=(git)` and replace with `plugins=(git colorize zsh-autosuggestions zsh-syntax-highlighting docker)`

## Recomendations for each Enviroment

### GNU

#### Extensions

* [Bubble effect window](https://extensions.gnome.org/extension/3210/compiz-windows-effect/)
* [Lamp Effect](https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/)
* [Dash to panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
* [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
* [Burn My Windows](https://extensions.gnome.org/extension/4679/burn-my-windows/)
* [Desktop Cube](https://extensions.gnome.org/extension/4648/desktop-cube/)

#### Themes and icons

* [Dracula Theme](https://www.gnome-look.org/p/1687249/)
* [Beautyline Icons](https://www.gnome-look.org/p/1425426)
* [Oreo Cursor](https://www.gnome-look.org/p/1360254)

#### VR Enviroment

##### Immersed Application

```bash
wget https://static.immersed.com/dl/Immersed-x86_64.AppImage
```

##### Config Section "Screen" of `/etc/X11/xorg.conf` File.

Configuration to setup with virtual monitors.

```bash
Section "Screen"
    Identifier     "Screen0"
    Device         "Device0"
    Monitor        "Monitor0"
    DefaultDepth    24
    SubSection     "Display"
        Depth       24
    EndSubSection
    Option         "MetaModes" "DP-0: 1920x1200_60 +0+0, HDMI-0: 1920x1080_60 +1920+120, DVI-D-1: 1920x1080_60 +2944+120"
    Option         "ConnectedMonitor" "DP-0, HDMI-0, DVI-D-1"
EndSection
```

## Authors

* [Lucas Nunes](https://www.github.com/kilerhg) - Initial work

## License

* This project is licensed under the GNU GENERAL PUBLIC LICENSE - see the [LICENSE](LICENSE) file for details
