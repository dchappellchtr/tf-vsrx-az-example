variable "resource_group_name" {
    type = string
    default = "rg-srx-example"
}

variable "location" {
    type = string
    default = "canadacentral"
}

variable "storage_account_name" {
    type = string
    default = "chtrdemosrxexample"
}

variable "vm_size" {
    type = string
    default = "Standard_DS3_v2"
}

variable "product_name" {
    type = string
    default = "vsrx-azure-image-byol"
}

variable "product_offer" {
    type = string
    default = "vsrx-next-generation-firewall-payg"
}

variable "product_publisher" {
    type = string
    default = "juniper-networks"
}


variable "srx_version" {
    type = string
    default = "19.4.1"
}

variable "hostname" {
    type = string
    default = "test-srx-chtr"
}

variable "username" {
    type = string
    default = "ctadmin"
}

variable "password" {
    type = string
}