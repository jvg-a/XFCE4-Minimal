#!/usr/bin/env bash

## configure and install minimal xfce desktop environment

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "You must run with root"
  exit 1
fi

apt install sudo -y

apt install -y libxfce4ui-utils thunar xfce4-appfinder xfce4-panel xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin xfce4-session xfce4-settings xfce4-terminal xfce4-goodies xfconf xfdesktop4 xfwm4 adwaita-qt qt5ct network-manager-openvpn network-manager-gnome network-manager-openvpn-gnome

unzip theme.zip
cd theme
cp -r theme/xfce4 /etc/xdg/
cp -r theme/themes /usr/share/
cp -r theme/icons /usr/share/

cd

echo 
echo xfce install complete, please reboot and issue 'startx'
echo

