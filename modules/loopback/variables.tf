variable "loopback_id" {
    description = "The number of the loopback"
    type = number
  
}
variable "device_name" {
  description = "The target router name" 
}
variable "description" {
  description = "Description of the interface"
  default = "Configured using Terraform"
}
variable "ipv4_address" {
   description = "IP address of the loopback"
  
}
variable "ipv4_mask" {
    description = "Subnet mak"
    default = "255.255.255.255"
}