echo - duvar kagidi ayarlaniyor
FILE="$HOME/app/wallpaper/wallpaper-lite.jpg"
URI="file:///$FILE"
echo ${URI}
gsettings set org.gnome.desktop.background picture-options 
gsettings set org.gnome.desktop.background picture-uri "${URI}"
