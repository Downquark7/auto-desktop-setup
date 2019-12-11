#!/bin/sh
set -e
useradd -m enicely
usermod -aG wheel enicely
passwd enicely
HOMEDIR=/home/enicely
cp terminal /usr/bin/terminal
cp i3status.conf /etc/i3status.conf
cp sddm.conf /etc/sddm.conf
cp blurlock /usr/bin/blurlock
pacman -S sddm scrot dolphin pcmanfm xorg-server xorg-xbacklight xorg-xinit xorg-xmodmap firefox git i3-gaps dmenu network-manager-applet networkmanager mesa intel-ucode openssh base-devel pavucontrol pulseaudio pulseaudio-alsa alsa-utils alsa-firmware kdeconnect lolcat sl go lxappearance nano htop dunst bluez bluez-utils blueman gtk2 gtk3 zsh sudo xf86-video-intel i3-status imagemagick
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
#install compton-tryone-git [aur] if animations suck
yay -S gtop compton-tryone-blackcapcoder-git ocs-url sddm-theme-sugar-candy-git candy-icons-git oh-my-zsh-git pavucontrol
mkdir -p /usr/share/sddm/themes/Sugar-Candy/Backgrounds/
cp theme.conf /usr/share/sddm/themes/Sugar-Candy/
cp cat-rain.jpg /usr/share/sddm/themes/Sugar-Candy/Backgrounds/
cp .Xmodmap $HOMEDIR/.Xmodmap
cp vncDisplay.sh $HOMEDIR/vncDisplay.sh
mkdir -p $HOMEDIR/.config/i3/
cp config $HOMEDIR/.config/i3/config
cp compton.conf $HOMEDIR/.config/compton.conf
mkdir -p $HOMEDIR/.config/gtk-3.0/
cp settings.ini $HOMEDIR/.config/gtk-3.0/settings.ini
cp .xinitrc $HOMEDIR/.xinitrc
cp .zshrc $HOMEDIR/.zshrc
sudo -u enicely chsh -s /usr/bin/zsh
