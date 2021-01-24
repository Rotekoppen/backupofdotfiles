#!/bin/bash

/usr/lib/kdeconnectd &

mpd &
mpd-discord-rpc --adress localhost:16850 &
killall mpdscribble && mpdscribble --conf ~/.config/mpdscribble --host 127.0.0.1 --port 16850 -D &

redshift -l 64.464706:11.494210 &

xrdb dotfiles/common/.Xresources

synclient \
PalmDetect=1 \
ClickPad=1 \
TapButton1=1 \
TapButton2=3 \
HorizTwoFingerScroll=1 \
TapButton3=2 \
RightButtonAreaLeft=1900 \
MiddleButtonAreaRight=1899 \
MiddleButtonAreaLeft=1200 \
MiddleButtonAreaTop=1728

sleep 10; killall syndaemon; syndaemon -K -i 0.5s -R -v &
