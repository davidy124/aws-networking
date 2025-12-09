variable "name" {
  type        = string
  description = "Enter the Name"
}

variable "vpc_id" {
  type        = string
  description = "Enter the VPC ID"
}

variable "ingress" {
  description = "Ingress config"
  type        = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = list(string)
  }))
}


variable "egress" {
  description = "Egress config"
  type        = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = list(string)
    prefix_list_ids = list(string)
  }))
}
