#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway -c ~/.config/sway/config
fi

# If running from tty3 start sway normal
if [ "$(tty)" = "/dev/tty3" ]; then
	exec sway -c /home/dh/.config/sway/config	
fi