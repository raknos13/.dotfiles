swayidle \
	timeout 90 '~/.config/swaylock/lock.sh --grace 10 --fade-in 5' \
	timeout 80 'swaymsg "output * dpms off"' \
	resume 'swaymsg "output * dpms on"' \
	before-sleep '~/.config/swaylock/lock.sh'
