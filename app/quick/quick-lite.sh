QUICKFOLDER="$HOME/app/quick"
RED='\033[0;31m'
NC='\033[0m'
echo -e "- ${RED}OIHDs Quick lite setup is starting"
echo -e "${NC}-"
cd $QUICKFOLDER
chmod +x quick-apps.sh quick-firefox-restore.sh quick-lite.sh quick-theme-light.sh
sh quick-apps.sh
sh quick-firefox-restore.sh
sudo apt --fix-broken install
echo -e "- ${RED}Complete - Press enter to exit "
read goodbyemyfriend
exit
