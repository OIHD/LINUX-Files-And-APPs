echo - OIHD Quick Install -
echo - 
echo -  POPOS 22.04 B1
echo -
echo - -Kuruluma baslandi


echo -APP - DEBLER Yetkilendiriliyor
cd ~/app/debler/
sudo chmod +x discord-0.0.17.deb
sudo chmod +x gettext_0.21-4ubuntu3_amd64.deb
sudo chmod +x peazip_8.4.0.LINUX.GTK2-1_amd64.deb
sudo chmod +x plasticity_0.5.11_amd64.deb
sudo chmod +x timeshift_20.11.1-1_amd64.deb
sudo chmod +x dbus-tests_1.12.20-2ubuntu2_amd64.deb
sudo chmod +x libncurses-dev_6.1+20181013-2+deb10u2_amd64.deb
sudo chmod +x code_1.63.2-1639562499_amd64.deb


echo -APP - DEBLER Kuruluyor
sudo dpkg -i discord-0.0.17.deb
sudo dpkg -i gettext_0.21-4ubuntu3_amd64.deb
sudo dpkg -i peazip_8.4.0.LINUX.GTK2-1_amd64.deb
sudo dpkg -i plasticity_0.5.11_amd64.deb
sudo dpkg -i timeshift_20.11.1-1_amd64.deb
sudo dpkg -i dbus-tests_1.12.20-2ubuntu2_amd64.deb
sudo dpkg -i libncurses-dev_6.1+20181013-2+deb10u2_amd64.deb
sudo dpkg -i code_1.63.2-1639562499_amd64.deb


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
