rm -rf $HOME/.config/waybar
rm -rf $HOME/.config/kitty
rm -rf $HOME/.config/hypr
mkdir -p $HOME/.config
mv config/* $HOME/.config/
sudo mv environment /etc/environment
#This script should be run as "sudo -su username"
