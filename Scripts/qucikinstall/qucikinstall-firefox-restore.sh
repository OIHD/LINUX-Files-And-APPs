echo - OIHD Quick Install -
echo - 
echo -  POPOS 22.04 B1
echo -
echo - - firefox kurtarma

echo -Firefoxyedek.zip - Firefox ayarlari ekleniyor
cd /home/oihd/app
unzip firefox-backup.zip 
cd /home/oihd/.mozilla/firefox
sudo rm -rf  /home/oihd/.mozilla/firefox/*
echo ----------------------------------
echo - ENTER TUSUNA BAS
echo - firefox acilacak
echo ----------------------------------
read oihdxrandom1
firefox
echo ----------------------------------
echo - FIREFOX UYGULAMASINI KAPAT
echo - ve daha sonra enter tuşuna bas
echo ----------------------------------
read oihdxrandom2

echo ----------------------------------
echo -
echo - 1- Firefxyedek.zip - *****.default-release uzantili dosyanin ismini yaz
echo -
echo ----------------------------------
ls -a 
echo ----------------------------------
read oihdxone
echo ----------------------------------
echo -
echo - 2- Firefoxyedek.zip - *****.default uzantili dosyanin ismini yaz
echo -
echo ----------------------------------
ls -a 
echo ----------------------------------
read oihdxtwo
echo -
cd /home/oihd/app
cp -r abcdefgh.default-release /home/oihd/.mozilla/firefox/
cp -r ijklmnop.default /home/oihd/.mozilla/firefox/
cd /home/oihd/.mozilla/firefox/
echo ----------------------------------
echo firefox kullanici dosyalari $oihdxone.default-release icine aktariliyor
sudo rm -rf  /home/oihd/.mozilla/firefox/$oihdxone.default-release/
sudo mv abcdefgh.default-release $oihdxone.default-release
echo firefox kullanici dosyalari $oihdxtwo.default icine aktariliyor
sudo rm -rf  /home/oihd/.mozilla/firefox/$oihdxtwo.default/
sudo mv ijklmnop.default $oihdxtwo.default
echo ----------------------------------
ls -a 
