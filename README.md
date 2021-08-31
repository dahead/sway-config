# sway-stuff
My personal configuration files for getting swaywm to work without xorg-server under archlinux.
My setup uses a laptop with a dockingstation and one external display (Clamshell Mode).

### Installation
The only necessary files are sway's config file (`.config/sway/config`) and the environment adjustments in `/etc/environment`.

### Backwards compatibility with xwayland:
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
Note: xorg-server etc. are not needed but you need to be installed. The only package needed is "xorg-server-xwayland" from the AUR. See: https://www.archlinux.org/packages/extra/x86_64/xorg-server-xwayland

### Features
- Notifications with mako.
- Variables set so various applications can launch on already configured workspaces.
- Autostart sway after logon on tty1.
- Adjust opacitiy of selected window with `$mod+o` or `$mod+shift+o`

### Optional applications
- bemenu as a launcher. See: https://archlinux.org/packages/community/x86_64/bemenu/.
- If you want to have notifications enabled, you have to install mako. See: https://github.com/emersion/mako.

### Todo in the future
- Move global vars from `/etc/environment` to `.config/sway/env`. See https://github.com/swaywm/sway/wiki/Systemd-integration. The directories and files for this are already created in this repository.
