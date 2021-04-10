#!/bin/bash

sudo apt install gnome-shell-extensions
sudo apt install unzip
sudo apt install wget

git clone https://github.com/atreyaved/MakingGnomeLookGoodFiles.git
cd MakingGnomeLookGoodFiles

unzip -q '*.zip'
cp -r Orchis-dark ~/.themes
cp -r material_cursors ~/.icons
cp -r Canta ~/.local/share/icons

gsettings set org.gnome.shell.extensions.user-theme name "Orchis-dark"
gsettings set org.gnome.desktop.interface icon-theme "Canta"
gsettings set org.gnome.desktop.interface gtk-theme "Orchis-dark"
gsettings set org.gnome.desktop.interface cursor-theme "material_cursors"

cd ..
rm -rf MakingGnomeLookGoodFiles
