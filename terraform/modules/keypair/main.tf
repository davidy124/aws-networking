resource "aws_key_pair" "ssh-key" {
  key_name   = var.name
  public_key = file(var.public_key_location)
  tags       = {
    Name = var.name
  }
}