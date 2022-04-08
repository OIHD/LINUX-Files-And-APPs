QUICKFOLDER="$HOME/app/quick"
RED='\033[0;31m'
NC='\033[0m'
echo -e "- ${RED}OIHDs Quick lite setup is starting"
sleep 1
echo 3
sleep 1 
echo 2
sleep 1
echo 1
sleep 1
echo -e "- ${RED}Starting"
echo -e "${NC}-"
cd $QUICKFOLDER
chmod +x quick-apps.sh quick-firefox-restore.sh quick-lite.sh quick-theme-light.sh
echo -e "- ${RED}APPs installing"
echo -e "${NC}-"
sleep 2
sh quick-apps.sh
echo -e "- ${RED}Theme installing"
echo -e "${NC}-"
sleep 2
sh quick-theme-light.sh
echo -e "- ${RED}Firefox installing"
echo -e "${NC}-"
sleep 2
sh quick-firefox-restore.sh
sudo apt --fix-broken install
echo -e "- ${RED}Complete - Press enter to exit "
echo -e "${NC}-"
read goodbyemyfriend
exit
