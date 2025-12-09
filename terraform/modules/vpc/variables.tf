variable "name" {
  default = {}
}

variable "cidr_block" {
  default = {}
}

variable "instance_tenancy" {
  type = string
  default = "default"
}

variable "enable_dns_support" {
  type = bool
  default = false
}

variable "enable_dns_hostnames" {
  type = bool
  default = false
}

variable "tags" {
  default = {}
}