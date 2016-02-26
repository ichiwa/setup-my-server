VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.box = "centos7"

  # config.vm.provision "ansible" do |ansible|
  #   ansible.inventory_path = "dev-hosts"
  #   ansible.playbook = "site.yml"
  # end

  config.vm.synced_folder "./../www/", "/home/www", create: true, owner: "vagrant", group: "vagrant", mount_options: ["dmode=777, fmode=777"]

end
