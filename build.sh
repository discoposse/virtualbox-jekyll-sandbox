#!/bin/bash

#  build.sh

# Authors: Eric Wright (@DiscoPosse)

export DEBIAN_FRONTEND=noninteractive
echo "set grub-pc/install_devices /dev/sda" | debconf-communicate

sudo apt-get update && sudo apt-get upgrade -y 
sudo apt-get install -y git git-review vim openssh-server 

# Install RVM to get updated Ruby and use 2.0.0 for vagrant user

sudo apt-get install -y nodejs
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
sudo curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/vagrant/.rvm/scripts/rvm
rvm get stable
rvm install 2.1.1
rvm use 2.1.1
rvm rubygems latest
gem install bundler




