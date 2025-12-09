variable "name" {
  type = string
}

variable "domain" {
  type = string
  default = "vpc"
}

variable "instance" {
  type = string
  description = "Instance Id"
  default = null
}
