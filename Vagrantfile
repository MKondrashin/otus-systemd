Vagrant.configure("2") do |config|
  config.vm.define :server do |server|
    server.vm.box = "almalinux/8"
    server.vm.hostname = "otus-systemd"
    server.vm.provision :shell, path: "systemd.sh"
  end
end