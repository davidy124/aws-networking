output "eip_assoc" {
  value = {
    id                   = aws_eip_association.eip_assoc.id
    public_ip            = aws_eip_association.eip_assoc.public_ip
    network_interface_id = aws_eip_association.eip_assoc.network_interface_id
  }
}