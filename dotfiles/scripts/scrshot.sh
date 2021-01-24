#!/bin/sh

loop=1
while [ "$loop" -eq 1 ]
do

loop=0
typechoice="$(echo "selection\nfull\nwindow" | dmenu -dmenu -i -p Screenshot)"

case "$typechoice" in
        "")
                exit ;;
        "selection")
                copychoice="$(echo "yes\nno\nback" | dmenu -i -p "Copy to clipboard?")"
                case "$copychoice" in
                        "")
                                exit ;;
                        "yes")
                                scrot -s ~/Pictures/Screenshots/Screenshot-$(date +%s).png -e 'xclip -selection c -t image/png < $f' ;;
                        "no")
                                scrot -s ~/Pictures/Screenshots/Screenshot-$(date +%s).png ;;
                        "back")
                                loop=1 ;;
                esac ;;
        "full")
                copychoice="$(echo "yes\nno\nback" | dmenu -i -p "Copy to clipboard?")"
                case "$copychoice" in
                        "")
                                exit ;;
                        "yes")
                                scrot ~/Pictures/Screenshots/Screenshot-$(date +%s).png -e 'xclip -selection c -t image/png < $f' ;;
                        "no")
                                scrot ~/Pictures/Screenshots/Screenshot-$(date +%s).png ;;
                        "back")
                                loop=1 ;;
                esac ;;
        "window")
                copychoice="$(echo "yes\nno\nback" | dmenu -i -p "Copy to clipboard?")"
                case "$copychoice" in
                        "")
                                exit ;;
                        "yes")
                                scrot -u ~/Pictures/Screenshots/Screenshot-$(date +%s).png -e 'xclip -selection c -t image/png < $f' ;;
                        "no")
                                scrot -u ~/Pictures/Screenshots/Screenshot-$(date +%s).png ;;
                        "back")
                                loop=1 ;;
                esac ;;
esac

done
