#!/bin/bash
sudo nano /etc/systemd/journald.conf
journalctl --vacuum-size=128M
journalctl --verify
