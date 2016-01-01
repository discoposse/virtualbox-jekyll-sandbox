# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "jekyll-sandbox" do |jekyll-sandbox|
    jekyll-sandbox.vm.hostname = "jekyll-sandbox"
    jekyll-sandbox.vm.box = "trusty-server"
    jekyll-sandbox.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box"
  end
end