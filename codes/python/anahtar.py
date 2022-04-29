# "home/oihd" klasöründe "deney" isimli dosyayı bulup
# içerisindeki "anahtar" isimli klasörü tutup o dosyanın
# içindeki geri kalan tüm dosyaları silen scripttir.

import os
import shutil
import subprocess

aktifkonum = os.getcwd()
print("Konum1: {0}".format(aktifkonum))

print("-------------------------------")

basharama = subprocess.Popen(['find' , '/home/oihd/' , '-name' , 'deney'], stdout=subprocess.PIPE).communicate()[0]
sonuc = str(basharama)

sonuc = sonuc.strip('b\'')
sonuc = sonuc.strip('\\n\'')

os.chdir(sonuc)

print("-------------------------------")

print(os.listdir(sonuc))

alt_klasorler = [dosyaismi for dosyaismi in os.listdir(sonuc) if os.path.isdir(os.path.join(sonuc, dosyaismi))]

for silinecekler in alt_klasorler:
  if silinecekler != "anahtar":
   shutil.rmtree(sonuc+"/"+silinecekler, ignore_errors=True)

print("-------------------------------")


print("Konum2: {0}".format(os.getcwd()))
