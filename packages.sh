#!/bin/bash

# Base system
sudo pacman -S --noconfirm efibootmgr iwd mkinitcpio curl wget
# sudo pacman -S --noconfirm mkinitcpio-busybox 
# Obsolete since iwd 0.19
# sudo pacman -S --noconfirm dhcpcd

# shell
sudo pacman -R --noconfirm zsh zsh-completions zsh-syntax-highlighting zsh-theme-powerlevel10k
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# desktop, window manager >>> sway
sudo pacman -S --noconfirm wayland wayland-protocols sway swaylock swaybg swayidle i3status mako bemenu bemenu-wayland xorg-xwayland lxappearance nitrogen
# sudo pacman -R --noconfirm archlinux-wallpaper 

# login manager
# sudo pacman -S --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings 

# System tools
sudo pacman -R --noconfirm sudo kitty kitty-shell-integration kitty-terminfo 
sudo pacman -R --noconfirm awesome-terminal-fonts ttf-font-awesome
sudo pacman -R --noconfirm htop tree remmina rsync putty p7zip  
sudo pacman -R --noconfirm pulseaudio pavucontrol keepassxc
# Obsolete?
# sudo pacman -R --noconfirm dialog wpa_supplicant alsa-utils inetutils

# file manager
sudo pacman -R --noconfirm pcmanfm ffmpegthumbnailer file-roller

# Text editor
sudo pacman -R --noconfirm nano neovim geany

# Security
# sudo pacman -R --noconfirm ufw rkhunter nmap

# Internet
sudo pacman -R --noconfirm firefox youtube-dl 

# Media
sudo pacman -R --noconfirm mpv grim viewnior cmus
sudo pacman -R --noconfirm gst-plugins-base libdvdcss
# Big packages...
# sudo pacman -R --noconfirm gimp shotcut

# Development
# sudo pacman -R --noconfirm visual-studio-code-bin qemu git virt-manager

# Lenovo X1C9 specific
sudo pacman -R --noconfirm xf86-video-intel xf86-video-nouveau lm_sensors fwupd brightnessctl-logind 
# sudo pacman -R --noconfirm xf86-video-amdgpu sof-firmware

# Gaming
# sudo pacman -R --noconfirm steam dosbox wine

# Old xorg stuff
# sudo pacman -R --noconfirm xorg-fonts-encodings xorg-server-common xorg-setxkbmap xorg-xkbcomp xorg-xprop xorg-xrandr xorg-xset xorg-xwayland 

# sudo systemctl enable lightdm

# Services
sudo systemctl enable iwd.service