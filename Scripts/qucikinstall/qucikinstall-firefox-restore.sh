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
oihdxtree=*.default-release
oihdxfour=*.default
cp -r $oihdxtree /home/oihd/.mozilla/firefox/
cp -r $oihdxfour /home/oihd/.mozilla/firefox/


cd /home/oihd/.mozilla/firefox/
sudo rm -rf  /home/oihd/.mozilla/firefox/$oihdxone
sudo mv $oihdxtree $oihdxone
sudo rm -rf  /home/oihd/.mozilla/firefox/$oihdxtwo
sudo mv $oihdxfour $oihdxtwo
