FILE="$HOME/app/wallpaper/wallpaper-windows.jpg"
URI="file:///$FILE"
LITET="$HOME/app/zip/theme-lite/"
GOSHARE="/usr/share/"

echo ${URI}
gsettings set org.gnome.desktop.background picture-options 
gsettings set org.gnome.desktop.background picture-uri "${URI}"

cd $GOSHARE/icons/
sudo rm -rf Pop/
cd $GOSHARE/themes/
sudo rm -rf Pop
sudo rm -rf Pop-dark/
cd $LITET
cp gnome_terminal_settings_backup.txt /home/oihd/
unzip theme-lite.zip 
cd /home/oihd/
dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt
cd $LITET/icons
sudo cp -r Pop /usr/share/icons
cd $LITET/theme
sudo cp -r Pop-dark /usr/share/themes/
sudo cp -r Pop /usr/share/themes/







cd $HOME/.local/share/
mkdir fonts
cd $LITET/font
sleep 2
cp -r San Francisco.ttf $HOME/.local/share/fonts
cp -r SanFranciscoDisplay-Regular.otf $HOME/.local/share/fonts

gsettings set org.gnome.desktop.interface font-name 'San Francisco 10'
gsettings set org.gnome.desktop.interface document-font-name 'San Francisco 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'San Francisco 12'

dconf dump /org/gnome/terminal/ > gnome_terminal_settings_backup_son.txt

