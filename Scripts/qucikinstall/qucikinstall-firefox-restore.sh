echo -
echo - OIHD Quick Install -
echo - 
echo - Hızlı Firefox kurtarma basliyor
echo -


cd /home/oihd/app
unzip firefox-backup.zip 
cd /home/oihd/.mozilla/firefox
sudo rm -rf  /home/oihd/.mozilla/firefox/*
firefox


echo ----------------------------------
echo - enter tuşuna bas
echo ----------------------------------
read oihdxrandom


oihdxone=*.default-release
oihdxtwo=*.default


cd /home/oihd/app
cp -r abcdefgh.default-release /home/oihd/.mozilla/firefox/
cp -r ijklmnop.default /home/oihd/.mozilla/firefox/
cd /home/oihd/.mozilla/firefox/


sudo rm -rf  /home/oihd/.mozilla/firefox/$oihdxone.default-release/
sudo mv abcdefgh.default-release $oihdxone.default-release


sudo rm -rf  /home/oihd/.mozilla/firefox/$oihdxtwo.default/
sudo mv ijklmnop.default $oihdxtwo.default
