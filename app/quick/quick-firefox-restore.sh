#!/bin/bash
FILEPATH="$HOME/app/zip"
MOZILLAPATH="$HOME/.mozilla/firefox"
echo "- OIHD's Quick Install Kit -"
echo "- Fast Firefox recovery"
echo "- Thanks SuperDozer for their contribution."
rm -rf "$MOZILLAPATH/"*
nohup firefox &>/dev/null &
sleep 2
pkill -x -f firefox
if [ -d "$FILEPATH/Firefox Backup" ]; then
    rm -rf "$FILEPATH/Firefox Backup"
fi
unzip -qq $FILEPATH/firefox-backup.zip -d "$FILEPATH/Firefox Backup"
DEFAULTFILE=$(basename "$MOZILLAPATH/"*\.default)
DEFAULTRELEASEFILE=$(basename "$MOZILLAPATH/"*\.default-release)
rm -rf $MOZILLAPATH/$DEFAULTFILE
rm -rf $MOZILLAPATH/$DEFAULTRELEASEFILE
mv "$FILEPATH/Firefox Backup/"*\.default $MOZILLAPATH/$DEFAULTFILE
mv "$FILEPATH/Firefox Backup/"*\.default-release $MOZILLAPATH/$DEFAULTRELEASEFILE



