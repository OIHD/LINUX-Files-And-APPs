#!/bin/bash
ICOFOLDER="$HOME/app/icon/"
APPFOLDER="$HOME/app/"
ZIPFOLDER="$HOME/app/zip/"
echo "-"
echo "- OIHD's Quick Install Kit -"
echo "-" 
echo "- Fast startup"
echo "-"
echo "-"
echo "-"
echo "- DEB - Installing"
cd $APPFOLDER/debs/
sudo dpkg -i gettext*
sudo dpkg -i libappindicator*
sudo dpkg -i discord*
sudo dpkg -i peazip*
sudo dpkg -i plasticity*
sudo dpkg -i timeshift*
sudo dpkg -i code*
echo "- 24 Hour time fix"
gsettings set org.gnome.desktop.interface clock-format '24h'
echo "- blur my shell - Installing"
cd $ZIPFOLDER
unzip blur-my-shell.zip
cd $ZIPFOLDER/blur-my-shell
make install
echo "- vim - Installing"
cd $ZIPFOLDER
unzip vim-yedek.zip 
cd $ZIPFOLDER/vim/src
make
sudo make install
echo "- neofetch - Installing"
cd $ZIPFOLDER
unzip neofetch-7.1.0.zip
cd $ZIPFOLDER/neofetch-7.1.0
sudo make install
echo "- icons - Installing "
cd $ICOFOLDER
sudo cp balena.desktop /usr/share/applications/
sudo cp blender.desktop /usr/share/applications/
sudo cp godot.desktop /usr/share/applications/
sudo cp godot4.desktop /usr/share/applications/
sudo cp inkscape.desktop /usr/share/applications/
sudo cp keepassxc.desktop /usr/share/applications/
sudo cp krita.desktop /usr/share/applications/
