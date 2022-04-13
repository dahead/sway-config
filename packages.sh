#!/bin/bash

# Base system
sudo pacman -S --noconfirm efibootmgr iwd mkinitcpio mkinitcpio-busybox curl wget 
# Obsolete since iwd 0.19
# sudo pacman -S --noconfirm dhcpcd

# desktop, window manager >>> sway
sudo pacman -S --noconfirm wayland wayland-protocols sway swaylock swaybg swayidle i3status mako bemenu bemenu-wayland xorg-xwayland lxappearance nitrogen
# sudo pacman -S --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings 

# System Tools
sudo pacman -R --noconfirm sudo nano neovim kitty kitty-shell-integration kitty-terminfo pcmanfm ffmpegthumbnailer file-roller geany
sudo pacman -R --noconfirm awesome-terminal-fonts ttf-font-awesome
# sudo pacman -R --noconfirm archlinux-wallpaper 
sudo pacman -R --noconfirm htop tree remmina rsync putty p7zip  
sudo pacman -R --noconfirm pulseaudio pavucontrol keepassxc
# Obsolete?
# sudo pacman -R --noconfirm dialog wpa_supplicant alsa-utils  inetutils

# Security
# sudo pacman -R --noconfirm ufw rkhunter nmap

# Internet
sudo pacman -R --noconfirm firefox youtube-dl 

# Media Tools
sudo pacman -R --noconfirm mpv grim viewnior shotcut cmus
sudo pacman -R --noconfirm gst-plugins-base
# Big packages...
# sudo pacman -R --noconfirm gimp

# shell
sudo pacman -R --noconfirm zsh zsh-completions zsh-syntax-highlighting zsh-theme-powerlevel10k

# Development
sudo pacman -R --noconfirm visual-studio-code-bin qemu git virt-manager

# Lenovo X1C9 specific
sudo pacman -R --noconfirm xf86-video-intel xf86-video-nouveau lm_sensors fwupd brightnessctl-logind 
# sudo pacman -R --noconfirm xf86-video-amdgpu sof-firmware

# Gaming
# sudo pacman -R --noconfirm steam

# Old xorg stuff
# sudo pacman -R --noconfirm xorg-fonts-encodings xorg-server-common xorg-setxkbmap xorg-xkbcomp xorg-xprop xorg-xrandr xorg-xset xorg-xwayland 

# sudo systemctl enable lightdm

# Services
sudo systemctl enable iwd.service