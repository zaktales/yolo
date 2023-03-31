terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "ecommerce" {
  count     = 1
  name      = "ecommerceterra"
  image     = "https://app.vagrantup.com/geerlingguy/boxes/ubuntu2004/versions/1.0.4/providers/virtualbox.box"
  cpus      = 2
  memory    = "512 mib"

  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet1"
  }
  provisioner "local-exec" {
    command = "ansible-playbook -i 192.168.60.10 ecommerce.yml"
  }
}