rm -rf $HOME/.config
mkdir -p $HOME/.config
mv config/* $HOME/.config/
mv environment /etc/environment
#This script should be run as "sudo -su username"
