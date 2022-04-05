QUICKFOLDER="$HOME/app/quick"
RED='\033[0;31m'
echo -e "- ${RED}OIHDs Quick lite setup is starting"
sleep 1
echo 3
sleep 1 
echo 2
sleep 1
echo 1
sleep 1
echo -e "- ${RED}Starting"
cd $QUICKFOLDER
chmod +x quick-apps.sh
chmod +x quick-firefox-restore.sh
chmod +x quick-lite.sh
echo -e "- ${RED}APPs installing"
sh quick-apps.sh
sleep 2
echo -e "- ${RED}Firefox installing"
sh quick-firefox-restore.sh
sleep 2
echo -e "- ${RED}Complete - Press enter to exit "
read goodbyemyfriend
exit
