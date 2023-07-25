iwctl #Wifi setting
    device list #List wifi devices
    station wlan0123 scan #Scans all wifi networks
    station wlan0123 get-networks #Lists all networks
    station wlan0123 connect "Network Name" #Connect to wifi
fdisk
    #to install UEFI, make a partition in fat-32 format, type, efi system, which is 200M in size
    #mkfs.fat -F32 /dev/sda1

mount /dev/sda1 /mnt
    #if UEFI is used, then efi system partition should be mounted to /mnt/boot
    #mount /dev/sda2 /mnt
    #mkdir /mnt/boot
    #mount /dev/sda1 /mnt/boot



vim /etc/pacman.d/mirrorlist
    Server = http://mirror.xeonbd.com/archlinux/$repo/os/$arch

pacstrap /mnt base base-devel linux linux-firmware linux-headers efibootmgr vim grub networkmanager network-manager-applet
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
vim /etc/locale.gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
locale-gen
echo "Hostname" > /etc/hostname
passwd
systemctl enable NetworkManager
grub-install /dev/sda #grub-install --force /dev/sda

#if UEFI is used,
#grub-install --efi-directory=/boot --bootloader-id=GRUB


grub-mkconfig -o /boot/grub/grub.cfg
exit
umount -R /mnt
reboot
nmtui #Setting Network
useradd -m "username"
usermod -G wheel "username"
passwd username
chfn -f "Full name" username
vim /etc/sudoers
su "username"
pacman -S xorg lxsession "gdm or ly-git via yay" rofi xfce4 xfce4-goodies pulseaudio pavucontrol xdg-user-dirs xdg-utils sxhkd bspwm polybar sxhkd firefox gimp openshot nitrogen ibus ibus-m17n m17n-db ranger pcmanfm git moc xterm xfce4-terminal
systemctl enable ly
timedatectl set-ntp true
timedatectl set-timezone Asia/Dhaka



#create .xprofile file to auto-start program
#sxhkd to hot keys
#install nautilus for ftp
