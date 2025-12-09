variable "vpc_id" {
  type        = string
  description = "Enter the VPC ID"
}

variable "map_public_ip_on_launch" {
  type = bool
  default = false
}

variable "subnets" {
  description = "Sub networks (name and cidr block)"
  type        = list(object({
    name       = string
    cidr_block = string
    avail_zone = string
  }))
}
