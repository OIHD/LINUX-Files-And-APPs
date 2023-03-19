#!/bin/bash
OIICOF="$HOME/app/icon/"
OIAPPF="$HOME/app/"
OIBINF="$HOME/app/bin"
OIZIPF="$HOME/app/zip/arsiv/"

cd $OIAPPF/zip/deb/ && sudo dpkg -i appimagelauncher_2.2.0-gha109.5a6cc33+bionic_amd64.deb balena-etcher_1.10.6_amd64.deb code_1.74.3-1673284829_amd64.deb gcolor3_2.4.0-2_amd64.deb libssl1.0.0_1.0.2n-1ubuntu5.10_amd64.deb

cd $OIZIPF
unzip $OIZIPF/ArmorPaint_09dev_linux64.zip
unzip -qq $OIZIPF/GIMP.zip -d "$HOME/.config"
tar -xzf $OIZIPF/material_maker_1_2_linux.tar.gz
tar -xzf $OIZIPF/qcad-3.27.9-pro-linux-x86_64.tar.gz
tar -xf $OIZIPF/blender-3.4.1-linux-x64.tar.xz 
tar -xf $OIZIPF/Materialize-v0.4.2.Linux64.tar.xz
tar -xf $OIZIPF/ShadeZ-Dark-Glass.tar.xz
cp -r $OIZIPF/qcad-3.27.9-pro-linux-x86_64/* $HOME/app/bin/qcad/
cp -r $OIZIPF/blender-3.4.1-linux-x64/* $HOME/app/bin/blender/
cp -r $OIZIPF/ArmorPaint/* $HOME/app/bin/ArmorPaint/
cp -r $OIZIPF/material_maker_1_2_linux/* $HOME/app/bin/materialmaker/


cd $OIICOF
sudo cp -r armorpaint.desktop blender.desktop materialmaker.desktop qcad.desktop /usr/share/applications/


sudo apt --fix-broken install -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install git libfuse2 g++ libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev dotnet-sdk-6.0 cmake make ffmpeg obs-studio imagemagick openssl libglm-dev libglew-dev libsdl2-dev haxe -y
mkdir ~/app/haxelib && haxelib setup ~/app/haxelib
