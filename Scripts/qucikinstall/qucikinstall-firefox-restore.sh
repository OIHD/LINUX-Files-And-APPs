echo -
echo - OIHD Quick Install -
echo - 
echo - Hızlı Firefox kurtarma basliyor
echo -
cd /home/oihd/.mozilla/firefox/
sudo rm -rf  /home/oihd/.mozilla/firefox/*
firefox
read bekle
echo *.default *.default-release
read oihdxone oihdxtwo
cd /home/oihd/app/zip/
unzip firefox-backup.zip 
sudo mv knql8af7.default $oihdxone
sudo mv 43r0gqqz.default-release $oihdxtwo
cd /home/oihd/.mozilla/firefox/
sudo rm -rf  /home/oihd/.mozilla/firefox/$oihdxone
cd /home/oihd/.mozilla/firefox/
sudo rm -rf  /home/oihd/.mozilla/firefox/$oihdxtwo
cd /home/oihd/app/zip/
cp -r $oihdxone /home/oihd/.mozilla/firefox/
cd /home/oihd/app/zip/
cp -r $oihdxtwo /home/oihd/.mozilla/firefox/
