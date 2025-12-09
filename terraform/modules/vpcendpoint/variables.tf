variable "vpc_id" {
  default = {}
}

variable "service_name" {
  default = {}
}

variable "security_group_ids" {
  type = list(string)
  default = []
}

variable "private_dns_enabled" {
  type = bool
  default = true
}

variable "subnet_ids" {
  type = list(string)
  default = []
}

variable "tags" {
  default = {}
}