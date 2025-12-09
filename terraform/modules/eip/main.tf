resource "aws_eip" "eip" {
  domain = var.domain
  instance = var.instance
  tags   = {
    Name = var.name
  }
}