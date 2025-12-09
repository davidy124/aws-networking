output "subnets-output" {

  #  value = { for k, v in aws_subnet.subnets: {v.id => v.id, name => v.} }
  #  value = aws_subnet.subnets

  value = [
    for subnet in aws_subnet.subnets :
    {
      id   = subnet.id
      name = subnet.tags.Name
    }
  ]
}

output "subnets-outputs" {
  value = { for subnet in aws_subnet.subnets : subnet.tags.Name => subnet }
}