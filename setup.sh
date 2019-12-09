#!/bin/sh

sudo cp terminal /usr/bin/terminal
sudo cp i3status.conf /etc/i3status.conf
sudo cp sddm.conf /etc/sddm.conf
sudo pacman -S sddm scrot dolphin pcmanfm xorg-server xorg-xbacklight xorg-xinit xorg-xmodmap firefox git i3-gaps networkmanager_dmenu network-manager-applet networkmanager mesa x86-video-intel morc-menu openssh base-devel pavucontrol pulseaudio pulseaudio-alsa alsa-utils alsa-firmware kdeconnect lolcat sl go lxappearance nano htop dunst bluez bluez-utils blueman gtk2 gtk3 zsh
chsh -s /usr/bin/zsh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
#install compton-tryone-git [aur] if animations suck
yay -S gtop compton-tryone-blackcapcoder-git ocs-url sddm-theme-sugar-candy-git candy-icons-git oh-my-zsh-git
sudo cp theme.conf /usr/share/sddm/themes/Sugar-Candy/
sudo cp cat-rain.jpg /usr/share/sddm/themes/Sugar-Candy/Backgrounds/
cp .Xmodmap ~/.Xmodmap
cp vncDisplay.sh ~/vncDisplay.sh
cp config ~/.config/i3/config
cp compton.conf ~/.config/compton.conf
cp settings.ini ~/.config/gtk-3.0/settings.ini
cp .xinitrc ~/.xinitrc
cp .zshrc ~/.zshrc
