
echo - duvar kagidi ayarlaniyor
FILE="/home/oihd/app/wp.jpg"
URI="file:///$FILE"
echo ${URI}
gsettings set org.gnome.desktop.background picture-options 
gsettings set org.gnome.desktop.background picture-uri "${URI}"



echo - blur my shell aktiflesiyor
gnome-extensions enable blur-my-shell@aunetx 


echo - flat remix ikonlar yukleniyor 
sudo rm -rf /usr/share/icons/Pop
cd /home/oihd/app/Gnome42tema
sudo cp -r Flat-Remix-Magenta-Dark /usr/share/icons/
cd /usr/share/icons/
sudo mv Flat-Remix-Magenta-Dark Pop


echo - flat remix gtk yukleniyor 
cd /usr/share/themes
sudo rm -rf /usr/share/themes/Pop-dark
sudo rm -rf /usr/share/themes/Pop
cd /home/oihd/app/Gnome42tema
sudo cp -r Flat-Remix-GTK-Magenta-Dark /usr/share/themes
cd /usr/share/themes
sudo mv Flat-Remix-GTK-Magenta-Dark Pop-dark
cd /home/oihd/app/Gnome42tema
sudo cp -r Flat-Remix-GTK-Magenta-Dark /usr/share/themes
cd /usr/share/themes
sudo mv Flat-Remix-GTK-Magenta-Dark Pop


echo - zsh yukleniyor 
cd /home/oihd/app/Gnome42tema/ohmyzsh
unzip oh-my-zsh.zip
cp -r .oh-my-zsh /home/oihd/
cd /home/oihd/
cp -r ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sudo apt install zsh 
sudo apt --fix-broken install
chsh -s $(which zsh)

echo - terminal ayarlaniyor
cd /home/oihd/app/Gnome42tema/
cp gnome_terminal_settings_backup.txt /home/oihd/
cd /home/oihd/
dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt
