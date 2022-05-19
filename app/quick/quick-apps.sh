#!/bin/bash
ICOFOLDER="$HOME/app/icon/"
APPFOLDER="$HOME/app/"
ZIPFOLDER="$HOME/app/zip/"
echo "- OIHD's Quick Install Kit -"
echo "- REMOVING - system apps "
sudo apt-get remove --purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove
echo "- UPDATE - system apps "
sudo apt-get upgrade
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
sudo dpkg -i steam*
echo "- PERMS - Installing"
cd $APPFOLDER/appimage/
chmod +x krita*
chmod +x KeePass*
chmod +x Inkscape*
chmod +x MyPaint*
chmod +x LibreOffice*
echo "- 24 Hour time fix"
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface gtk-theme Pop
gsettings set org.gnome.desktop.wm.preferences theme Pop
gsettings set org.gnome.desktop.interface show-battery-percentage true
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepUp
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepUp
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepUp
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepUp
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepUp
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepUp
gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power --method org.gnome.SettingsDaemon.Power.Screen.StepUp
gsettings list-recursively | grep location
gsettings set org.gnome.system.location enabled true
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
sudo cp libreoffice.desktop /usr/share/applications/
sudo cp flax.desktop /usr/share/applications/
echo "- FLAX SH FILES - Installing "
cd $HOME/app/quick/flax
cp flax.sh $HOME
cp geciciflax.sh $HOME
cp gitflax.sh $HOME
cp hgitflax.sh $HOME
echo "- EXTENSIONS - Installing "
killall -3 gnome-shell
sleep 10
gnome-extensions enable blur-my-shell@aunetx
