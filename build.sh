#!/bin/bash

#  build.sh

# Authors: Eric Wright (@DiscoPosse)

export DEBIAN_FRONTEND=noninteractive
echo "set grub-pc/install_devices /dev/sda" | debconf-communicate

sudo apt-get update && sudo apt-get upgrade -y 
sudo apt-get install -y git git-review vim openssh-server && sudo reboot

# Install RVM to get updated Ruby and use 2.0.0 for vagrant user

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm get stable
rvm install 2.0.0
rvm rubygems latest
gem install bundler

