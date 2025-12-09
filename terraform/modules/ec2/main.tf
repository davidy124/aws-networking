resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  availability_zone      = var.availability_zone

  associate_public_ip_address = var.associate_public_ip_address != "" ? var.associate_public_ip_address : false
  key_name                    = var.ssh_key != null ? var.ssh_key : null

  user_data = var.user_data != "" ? var.user_data : null
  iam_instance_profile = var.iam_instance_profile != "" ? var.iam_instance_profile : null

  tags = {
    Name = var.name
  }
}