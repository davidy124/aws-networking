variable "name" {
  type        = string
  description = "Enter the instance name"
}

variable "ami" {
  type        = string
  description = "Enter the image id"
}

variable "instance_type" {
  type        = string
  description = "Enter the stance ID"
  default     = "t2.micro"
}

variable "subnet_id" {
  type        = string
  description = "Enter the subnet"
}
variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Enter the VPC security group ids"
  default = []
}

variable "availability_zone" {
  type        = string
  description = "Enter the availability_zone"
}


variable "associate_public_ip_address" {
  type        = bool
  description = "if it is associated with public ip address"
  default     = false
}

variable "ssh_key" {
  type        = string
  description = "Enter the ssh key, the location of public key file"
  default = null
}


variable "user_data" {
  type        = string
  description = "Enter the script file"
  default = null
}

variable "iam_instance_profile" {
  type        = string
  description = "Enter the iam instance profile"
  default = null
}