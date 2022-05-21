echo "- Python - Installing"
cd $ZIPFOLDER
tar -xf Python-3.10.4.tar.xz -C $APPFOLDER
cd $APPFOLDER
mv Python-3.10.4 python
cd python
sudo ./configure --enable-optimizations

cd $HOME/app/zip
unzip -qq $HOME/app/zip/WhiteSur-firefox-theme-main.zip -d $HOME/app/zip/
cd WhiteSur-firefox-theme-main
./install.sh



echo -e "- ${RED}Theme installing"
echo -e "${NC}-"
sleep 2
sh quick-theme-light.sh




echo "- Godot - Installing"
cd $ZIPFOLDER
tar -xf godot.tar.xz -C $APPFOLDER


sudo apt install meson 
cd $HOME/app/zip/gnome-extensions
cp gnome-shell-extension-gsconnect.zip $HOME
cd $HOME
unzip gnome-shell-extension-gsconnect.zip
cd gnome-shell-extension-gsconnect/
meson _build .
ninja -C _build install-zip
