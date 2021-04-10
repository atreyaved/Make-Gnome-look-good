#!/bin/bash

sudo pacman -S gnome-shell-extension-user-theme
gsettings set org.gnome.shell enabled-extensions "['dash-to-dock@micxgx.gmail.com', 'TopIcons@phocean.net', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'Hide_Activities@shay.shayel.org', 'Move_Clock@rmy.pobox.com', 'appindicatorsupport@rgcjonas.gmail.com', 'pixel-saver@deadalnix.me', 'RemoveAppMenu@rastersoft.com', 'gnomeGlobalAppMenu@lestcape']"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'LEFT'

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
