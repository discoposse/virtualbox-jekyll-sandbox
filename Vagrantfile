# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "jekyllsandbox" do |jekyllsandbox|
    jekyllsandbox.vm.hostname = "jekyllsandbox"
    jekyllsandbox.vm.box = "trusty-server"
    jekyllsandbox.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box"
    jekyllsandbox.vm.network :private_network, ip: "10.180.0.10", :netmask => "255.255.255.0"
    jekyllsandbox.vm.provision :shell, :path => "build.sh"
  end
end