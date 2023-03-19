#!/bin/bash
OIICOF="$HOME/app/icon/"
OIAPPF="$HOME/app/"
OIBINF="$HOME/app/bin"
OIZIPF="$HOME/app/zip/arsiv/"

sudo dnf remove akregator kamoso mediawriter elisa-player kmag kgpg qt5-qdbusviewer kcharselect kcolorchooser dragon kmines kmahjongg kpat kruler kmousetool kmouth kolourpaint konversation krdc kfind kaddressbook kmail kontact korganizer ktnef libreoffice-* kf5-akonadi-*

sudo dnf update
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia

sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld

cd $OIAPPF/zip/rpm/ && sudo rpm -i appimagelauncher-2.2.0-travis995.0f91801.x86_64.rpm balena-etcher-1.18.4.x86_64.rpm

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


sudo dnf install kmod-v4l2loopback gcolor3 git fuse fuse-devel g++ libXrandr-devel libXinerama-devel libXcursor-devel libXi-devel dotnet-sdk-6.0 gcc clang cmake make ffmpeg obs-studio ImageMagick openssl glm-devel libGLEW SDL2-devel haxe --skip-broken
mkdir ~/app/haxelib && haxelib setup ~/app/haxelib
