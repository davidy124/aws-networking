output "eip_info" {
  value = {
    id        = aws_eip.eip.id
    public_ip = aws_eip.eip.public_ip
  }
}