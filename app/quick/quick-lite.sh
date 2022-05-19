QUICKFOLDER="$HOME/app/quick"
RED='\033[0;31m'
NC='\033[0m'
echo -e "- ${RED}OIHDs Quick lite setup is starting"
echo -e "${NC}-"
cd $QUICKFOLDER
chmod +x quick-apps.sh quick-firefox-restore.sh quick-lite.sh quick-theme-light.sh
sh quick-apps.sh
sh quick-firefox-restore.sh
sudo apt --fix-broken install -y
sudo apt-get install -y curl libcurl4-gnutls-dev mono-devel
echo -e "${NC} FLAX ENGINE - installing"
cd $HOME/app/flaxengine
unzip FlaxEditorLinux.zip -d $HOME/app/flaxengine/FlaxEditorLinux
mkdir flaxprojeler
cd flaxprojeler
mkdir proje
cd $HOME/app/flaxengine/FlaxEditorLinux/Binaries/Editor/Linux/Development ;./FlaxEditor -new -project $HOME/app/flaxengine/flaxprojeler/proje 
exit
