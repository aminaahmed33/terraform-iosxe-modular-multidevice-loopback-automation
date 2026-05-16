terraform {
  required_providers {
    iosxe ={
        source = "CiscoDevnet/iosxe"
        version = "0.17.0"
    }
  }
}

resource "iosxe_interface_loopback" "loopback" {
    device = var.device_name
    name = var.loopback_id
    description = var.description
    ipv4_address = var.ipv4_address
    ipv4_address_mask = var.ipv4_mask
  
}