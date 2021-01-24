exec mpd
exec mpd-discord-rpc --adress localhost:16850
exec killall mpdscribble; sleep 5; mpdscribble --conf ~/.config/mpdscribble --host 127.0.0.1 --port 16850 -D
