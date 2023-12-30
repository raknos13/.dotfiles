swaylock --screenshots --clock --indicator-idle-visible \
	--indicator-radius 80 \
	--indicator-thickness 10 \
	--ring-color 00000000 \
	--key-hl-color be5046 \
	--text-color ffc107 \
	--line-color 00000000 \
	--inside-color 00000000 \
	--separator-color 00000000 \
	--fade-in 0.1 \
	--effect-scale 0.1 --effect-blur 0x10 --effect-scale 10 \
	--effect-vignette 0.5:0.5 \
	--effect-compose "0,1.5%;-1x10%;$HOME/.config/sway/lock.svg" \
	"$@"
