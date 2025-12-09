variable "name" {
  type        = string
  description = "Enter the Name"
}

variable "vpc_id" {
  type        = string
  description = "Enter the VPC ID"
}

variable "gateway_id" {
  type        = string
  description = "Enter the gateway id"
  default = null
}

variable "nat_gateway_id" {
  type        = string
  description = "Enter the nat_gateway_id"
  default = null
}

variable "cidr_block" {
  type        = string
  description = "Enter the cidr"
  default = null
}
