echo -
echo - OIHD Quick Install -
echo - 
echo - Hızlı kurulum basliyor
echo -


echo -APP - DEBLER Kuruluyor
cd ~/app/debler/
sudo dpkg -i discord*
sudo dpkg -i gettext*
sudo dpkg -i peazip*
sudo dpkg -i plasticity*
sudo dpkg -i timeshift*
sudo dpkg -i dbus-tests*
sudo dpkg -i libncurses-dev*
sudo dpkg -i code*


echo - saat fix
gsettings set org.gnome.desktop.interface clock-format '24h'


echo - blur my shell kuruluyor 
cd /home/oihd/app
unzip blur-my-shell.zip
cd /home/oihd/app/blur-my-shell
make install


echo - vim kuruluyor
cd /home/oihd/app
unzip vim-yedek.zip 
cd /home/oihd/app/vim/src
make
sudo make install


echo - neofetch kuruluyor
cd /home/oihd/app
unzip neofetch-7.1.0.zip
cd /home/oihd/app/neofetch-7.1.0
sudo make install


echo - iconlar ekleniyor 
cd /home/oihd/app/icon/
sudo cp balena.desktop /usr/share/applications/
cd /home/oihd/app/icon/
sudo cp blender.desktop /usr/share/applications/
cd /home/oihd/app/icon/
sudo cp godot.desktop /usr/share/applications/
cd /home/oihd/app/icon/
sudo cp godot4.desktop /usr/share/applications/
cd /home/oihd/app/icon/
sudo cp inkscape.desktop /usr/share/applications/
cd /home/oihd/app/icon/
sudo cp keepassxc.desktop /usr/share/applications/
cd /home/oihd/app/icon/
sudo cp krita.desktop /usr/share/applications/
