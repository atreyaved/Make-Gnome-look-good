#!/bin/bash

sudo dnf install gnome-shell-extension-user-theme
sudo dnf install wget
sudo dnf install unzip

git clone https://github.com/atreyaved/MakingGnomeLookGoodFiles.git
cd MakingGnomeLookGoodFiles

unzip Orchis-dark.zip
unzip material_cursors.zip
unzip Canta.zip
cp -r Orchis-dark ~/.themes
cp -r material_cursors ~/.icons
cp -r Canta ~/.local/share/icons
unzip clipboard-indicatortudmotu.com.v37.shell-extension.zip
unzip dash-to-dockmicxgx.gmail.com.v69.shell-extension.zip
mkdir -p ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com
cp -r clipboard-indicatortudmotu.com.v37.shell-extension ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com
mkdir -p ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com
cp -r dash-to-dockmicxgx.gmail.com.v69.shell-extension ~/.local/share/gnome-shell/extensions/dash-to-dockmicxgx.gmail.com.v69.shell-extension


gsettings set org.gnome.shell.extensions.user-theme name "Orchis-dark"
gsettings set org.gnome.desktop.interface icon-theme "Canta"
gsettings set org.gnome.desktop.interface gtk-theme "Orchis-dark"
gsettings set org.gnome.desktop.interface cursor-theme "material_cursors"
gnome-shell-extension-tool -e clipboard-indicatortudmotu.com.v37.shell-extension
gnome-shell-extension-tool -e dash-to-dockmicxgx.gmail.com.v69.shell-extension

cd ..
rm -rf MakingGnomeLookGoodFiles
