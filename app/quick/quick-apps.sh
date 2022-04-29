#!/bin/bash
ICOFOLDER="$HOME/app/icon/"
APPFOLDER="$HOME/app/"
ZIPFOLDER="$HOME/app/zip/"
echo "- OIHD's Quick Install Kit -"
echo "- DEB - Installing"
cd $APPFOLDER/debs/
sudo dpkg -i libncurses*
sudo dpkg -i libc-ares*
sudo dpkg -i gettext*
sudo dpkg -i libappindicator*
sudo dpkg -i discord*
sudo dpkg -i peazip*
sudo dpkg -i plasticity*
sudo dpkg -i timeshift*
sudo dpkg -i code*
echo "- PERMS - Installing"
cd $APPFOLDER/appimage/
chmod +x krita*
chmod +x KeePass*
chmod +x Inkscape*
chmod +x MyPaint*
echo "- 24 Hour time fix"
gsettings set org.gnome.desktop.interface clock-format '24h'
echo "- blur my shell - Installing"
cd $HOME/.local/share/gnome-shell
mkdir extensions
cd $ZIPFOLDER
unzip -qq $ZIPFOLDER/blur-my-shell.zip -d $HOME
cd $HOME/blur-my-shell
make install
echo "- vim - Installing"
cd $ZIPFOLDER
unzip -qq $ZIPFOLDER/vim-yedek.zip -d $HOME
cd $HOME/vim/src
make
sudo make install
echo "- neofetch - Installing"
cd $ZIPFOLDER
unzip neofetch-7.1.0.zip
cd $ZIPFOLDER/neofetch-7.1.0
sudo make install
echo "- Blender - Installing"
cd $ZIPFOLDER
tar -xf blender-3.1.2-linux-x64.tar.xz -C $APPFOLDER
cd $APPFOLDER
mv blender-3.1.2-linux-x64 blender
echo "- Godot - Installing"
cd $ZIPFOLDER
tar -xf godot.tar.xz -C $APPFOLDER
echo "- GIMP - Installing"
cd $APPFOLDER/appimage/
chmod +x GIMP_App*
cd $ZIPFOLDER
cp GIMP.zip $HOME/.config
if [ -d "$HOME/.config/GIMP-AppImage" ]; then
    cd $HOME/.config/
    sudo rm -rf GIMP-AppImage
fi
cd $HOME/.config
unzip -qq GIMP.zip -d "$HOME/.config"
sudo rm -rf GIMP.zip
echo "- icons - Installing "
cd $ICOFOLDER
sudo cp balena.desktop /usr/share/applications/
sudo cp blender.desktop /usr/share/applications/
sudo cp godot.desktop /usr/share/applications/
sudo cp godot4.desktop /usr/share/applications/
sudo cp inkscape.desktop /usr/share/applications/
sudo cp keepassxc.desktop /usr/share/applications/
sudo cp krita.desktop /usr/share/applications/
sudo cp mypaint.desktop /usr/share/applications/
echo "- EXTENSIONS - Installing "
killall -3 gnome-shell
sleep 10
gnome-extensions enable blur-my-shell@aunetx
