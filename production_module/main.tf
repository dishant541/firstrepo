module "rg1" {
    source = "../azure_resources/resource_group"
  aman = var.suman
}

module "strg1" {
    source = "../azure_resources/storage_account"
    rohit=var.sapna
    depends_on = [ module.rg1 ]
  
}

module "vnet1" {
    source = "../azure_resources/virtual_network"
    qwerty=var.asdfgh
    depends_on = [ module.rg1 ]
  
}
module "subnet1" {
    source = "../azure_resources/subnet"

    subu=var.subu1
    depends_on = [ module.vnet1 ]
  
}
module "pip1" {
    source = "../azure_resources/pip"
    pip=var.pip1
    depends_on = [ module.rg1]
  
}
module "nic1" {
    source = "../azure_resources/nic"
nic=var.nic1
depends_on = [ module.rg1,module.pip1,module.subnet1]
}

module "vm1"{
    source = "../azure_resources/virtual-machine"
    vm=var.vm1
    depends_on = [  module.rg1,module.nic1]
}
  
