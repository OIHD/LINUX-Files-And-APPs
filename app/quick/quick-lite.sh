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
chmod +x quick-apps.sh
chmod +x quick-firefox-restore.sh
chmod +x quick-lite.sh
echo -e "- ${RED}APPs installing"
echo -e "${NC}-"
sh quick-apps.sh
sleep 2
echo -e "- ${RED}Firefox installing"
echo -e "${NC}-"
sh quick-firefox-restore.sh
sleep 2
echo -e "- ${RED}Complete - Press enter to exit "
echo -e "${NC}-"
read goodbyemyfriend
exit
