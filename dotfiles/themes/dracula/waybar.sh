#!/bin/bash

function tablet {
	laptop
	waybar -s ~/dotfiles/current/waybar.css
}

function laptop {
	waybar -s ~/dotfiles/current/waybar.css -c ~/dotfiles/current/waybar.lap.conf
}

killall waybar
$1
