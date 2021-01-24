dracula:
	yay -S ttf-font-awesome
	rm current
	ln -s themes/dracula current

sway:
	yay -S sway xorg-server-xwayland waybar swaylock-effects-git iio-sensor-proxy sway-interactive-screenshot volumectl brightnessctl
	mkdir -p ~/.config/sway
	ln -s ~/dotfiles/common/sway/config ~/.config/sway/config

rofi:
	yay -S rofi-lbonn-wayland-git
	mkdir -p ~/.config/rofi
	ln -s ~/dotfiles/current/rofi.rasi ~/.config/rofi/config.rasi

kitty:
	yay -S kitty
	mkdir -p ~/.config/kitty
	ln -s ~/dotfiles/common/kitty/kitty.conf ~/.config/kitty/kitty.conf

ly:
	yay -S ly

ranger:
	yay -s ranger python-pillow
	mkdir -p ~/.config/ranger
	ln -s ~/dotfiles/common/ranger/ ~/.config/

mpd:
	yay -S mpd ncmpcpp mpc mpd-discord-rpc-git mpdscribble
	mkdir -p ~/.ncmpcpp
	ln -s ~/dotfiles/common/mpd/.mpdconf ~/.mpdconf
	ln -s ~/dotfiles/common/mpd/.ncmpcpp ~/.ncmpcpp/config
	mkdir -p ~/.mpd
	mkdir -p ~/.config/discord-rpc
	ln -s ~/dotfiles/common/mpd/rpc.conf ~/.config/discord-rpc/config.toml

i3:
	yay -S i3-gaps
	mkdir -p ~/.config/i3
	ln -s ~/dotfiles/build/i3 ~/.config/i3/config

i3-config:
	cat \
		~/dotfiles/common/i3/config \
		~/dotfiles/common/sway/keybinds/* \
		~/dotfiles/common/sway/autostart/*.i \
		~/dotfiles/common/sway/autostart/*.b \
		~/dotfiles/current/i3 \
		~/dotfiles/current/sway-theme \
		> \
		~/dotfiles/build/i3

polybar:
	yay -S ttf-material-design-icons polybar

twmn:
	yay -S twmn-git
	mkdir -p ~/.config/twmn
	ln -s ~/dotfiles/current/twmn.conf ~/.config/twmn/twmn.conf

awesome:
	yay -S awesome
	mkdir -p ~/.config/awesome
	ln -s ~/dotfiles/common/awesome/rc.lua ~/.config/awesome/rc.lua
