Vagrant.configure("2") do |config|
  
  # Box Settings
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.hostname="synchsofthq.development"
  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    # vb.memory = 2048
    # vb.cpus = 4
  end

  # Network Settings

  config.vm.network "private_network", ip: "192.168.33.10"

  # Folder Settings
  config.vm.synced_folder ".", "/var/www/html"
  
  config.vm.provision "shell", path: "process.sh"
end
