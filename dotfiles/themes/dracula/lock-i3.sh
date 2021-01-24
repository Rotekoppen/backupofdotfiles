#!/bin/sh

convert ~/Background -geometry 3840x2160^ -gravity center -crop 3840x2160+0+0 /tmp/lockscreenimage

i3lock \
  -c 00000050 \
  \
  --pass-media-keys \
  --pass-screen-keys \
  --force-clock \
  \
  --timepos="50:558" \
  --time-align 1 \
  --timesize 128 \
  --time-font "Noto Sans Mono" \
  --timecolor f8f8f2 \
  --timestr="%H:%M:%S" \
  \
  --date-align 1 \
  --datesize 48 \
  --datecolor f8f8f2 \
  --datepos="50:618" \
  --date-font "Noto Sans Mono" \
  \
  --indicator \
  --radius 100 \
  --insidevercolor 6272a4 \
  --insidewrongcolor ff5555 \
  --insidecolor 00000000 \
  --linecolor 00000000 \
  --ringcolor 282a3600 \
  --separatorcolor 00000000 \
  --keyhlcolor f8f8f2 \
  --bshlcolor ff5555 \
  --ring-width 10 \
  \
#convert -geometry x1080 ~/Background /tmp/Background



#convert ~/Background -resize $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/1/') RGB:- | i3lock --raw $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/1/'):rgb --image /dev/stdin
