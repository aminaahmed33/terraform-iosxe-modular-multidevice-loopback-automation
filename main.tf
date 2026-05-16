terraform {
  required_providers {
    iosxe ={
        source = "CiscoDevnet/iosxe"
        version = "0.17.0"
    }
  }
}

provider "iosxe" {
    devices = [ {
      name = "R1"
      host = "10.255.1.102"
    },
    { name = "R2"
      host = "10.255.1.103"
    },
    { name = "R3"
      host = "10.255.1.104"
    } ]
    username = "admin"
    password = "admin123"
    protocol = "restconf"
  
}
locals {
  router_loopbacks = {
    "R1" = "192.168.100.1"
    "R2" = "192.168.100.2"
    "R3" = "192.168.100.3"
  }
}
module "loopback" {
    source = "./modules/loopback"
    for_each = local.router_loopbacks
    device_name = each.key
    loopback_id = 1
    ipv4_address = each.value
    providers = {
      iosxe = iosxe
    }

  
}
