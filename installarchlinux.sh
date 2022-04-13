#!/bin/bash
USERNAME=dh
HOSTNAME=dh-LAP1
PARTITION1=/dev/sda1
PARTITION2=/dev/sda2
GITCONFIG=https://github.com/dahead/dotfiles

# start setup

# show devices and start partitioning
lsblk
gdisk /dev/sda

// create new EFI partition
// n, default, default, size = +300, Filesystem type = ef00
// create new root/home partition
// n, default, default, default
// w

lsblk
// now we have to new partitions

// format EFI partition
mkfs.fat -F32 $PARTITION1

// encryption

// create encrypted partition with cryptsetup --h
cryptsetup --cipher aes-xts-plain64 --hash sha512 --use-random --verify-passphrase luksFormat $PARTITION2

// open partition
cryptsetup luksOpen $PARTITION2 root

// partition encrypted partition
mkfs.btrfs /dev/mapper/root

// now we have a new encrypted partition
lsblk

// mount partition
mount /dev/mapper/root /mnt
cd /mnt

// create subvolumes
btrfs subvolume create @
btrfs subvolume create @home

// unmount partition and remount subvolumes
unmount /mnt
mount -o noatime,space_cache=v2,compress=zstd,ssd,discard=async,subvol=@ /dev/mapper/root /mnt
mkdir /mnt/{boot,home}
mount -o noatime,space_cache=v2,compress=zstd,ssd,discard=async,subvol=@home /dev/mapper/root /mnt/home
mount $PARTITION1 /mnt/boot

// install base system
pacstrap /mnt base linux linux-firmware git nano neovim base-devel
# amd-ucode 

// generate filesystem table
genfstab -U /mnt >> /mnt/etc/fstab

// change to installation
arch-chroot /mnt

// mkinitcpio
nano /etc/mkinitcpio.conf
// add Module btrfs to MODULES
//MODULES=(btrfs)
// add HOOK to HOOKS
//HOOKS=(encrypt)
// recreate mkinitcpio
mkinitcpio -p linux

// configuration

// timezone
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
hwclock --systohc

// locales
echo "" > /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US ISO-8859-1" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=en" >> /etc/vconsole.conf
# echo "FONT=lat9w-16" >> /etc/vconsole.conf

// hostname
echo "$HOSTNAME" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts

// user
echo root:password | chpasswd
useradd -m $USERNAME
echo $USERNAME:password | chpasswd
# usermod -aG libvirt $USERNAME
echo "$USERNAME ALL=(ALL) ALL" >> /etc/sudoers.d/$USERNAME


// get my config
git clone $GITCONFIG

printf "\e[1;32mInstallation done! Type exit, umount -a and reboot the system.\e[0m"