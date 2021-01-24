exec swayidle -w \
	timeout 300 '~/dotfiles/current/lock.sh &' \
	timeout 600 'swaymsg "output * dpms off"' \
	resume 'swaymsg "output * dpms on"'
