exec synclient \
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

exec "sleep 10; killall syndaemon; syndaemon -K -i 0.5s -R -v"
