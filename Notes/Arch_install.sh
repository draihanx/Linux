iwctl #Wifi setting
    device list #List wifi devices
    station wlan0123 scan #Scans all wifi networks
    station wlan0123 get-networks #Lists all networks
    station wlan0123 connect "Network Name" #Connect to wifi
fdisk
mount /dev/sda1 /mnt
vim /etc/pacman.d/mirrorlist
    Server = http://mirror.xeonbd.com/archlinux/$repo/os/$arch

pacstrap /mnt base base-devel linux linux-firmware linux-headers vim grub networkmanager network-manager-applet
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
vim /etc/locale.gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
locale-gen
echo "Hostname" > /etc/hostname
passwd
systemctl enable NetworkManager
grub-install /dev/sda #grub-install --force /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
exit
umount -R /mnt
reboot
nmtui #Setting Network
useradd -m "username"
usermod -G wheel "username"
vim /etc/sudoers
su "username"
pacman -S xorg lxsession "gdm or ly-git via yay" xfce4 xfce4-goodies pulseaudio pavucontrol xdg-user-dirs
systemctl enable gdm
#create .xprofile file to auto-start program
#sxhkd to hot keys
#install nautilus for ftp
