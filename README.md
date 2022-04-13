# dotfiles
My personal configuration files for getting my machine set up.
My setup uses a lenovo laptop with an intel cpu and a docking station and one external display (aka Clamshell Mode).
I use sway as a windowmanager under wayland with bemenu, kitty, pcmanfm, zsh, neovim and other stuff.

### Arch linux base installation
The arch linux installation is documented in (`installarchlinux.sh`).
The packages for the installed system can be found in (`packages.sh`).

```
./installarchlinux.sh
./packages.sh
```

### sway installation
The only necessary files are sway's config file (`.config/sway/config`) and the environment adjustments in `/etc/environment`. Other files in  (`.config/sway/`) are optional.

### Backwards compatibility with xwayland
To disable support for xwayland/backwards compatibility add this line to your sway config:
```
# Disable support for xwayland
xwayland disable
```

If you want to have backwards compatibility enabled in sway, add this to your sway config:
```
# Enable support for xwayland
xwayland enable
```
Note: xorg-server etc. are not needed the be installed. The only package needed is "xorg-server-xwayland" from the AUR. See: https://www.archlinux.org/packages/extra/x86_64/xorg-server-xwayland

### Features
- Notifications with mako.
- App launcher with bemenu.
- Statusbar with i3status.
- Variables set so various applications can launch on already configured workspaces.
- Autostart sway after logon on tty1.
- Adjust opacitiy of selected window with <kbd>$mod</kbd> + <kbd>o</kbd> or <kbd>$mod</kbd> + <kbd>shift</kbd> + <kbd>o</kbd>

### Optional applications
- bemenu as a launcher. See: https://archlinux.org/packages/community/x86_64/bemenu/.
```
pacman -S bemenu
```
- If you want to have notifications enabled, you have to install mako. See: https://github.com/emersion/mako.
```
pacman -S mako
```

### Todo in the future
- Move background image to variable.
- Move global vars from `/etc/environment` to `.config/sway/env`. See https://github.com/swaywm/sway/wiki/Systemd-integration. The directories and files for this are already created in this repository.
