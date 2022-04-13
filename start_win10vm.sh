#!/bin/bash
qemu-system-x86_64 -cdrom Downloads/Windows.iso -boot order=d -drive file=win10.img,format=raw -m 8G -enable-kvm -cpu host -vga std -device intel-hda
