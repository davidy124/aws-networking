resource "aws_route_table" "route-table" {
  vpc_id = var.vpc_id

  dynamic "route" {
    for_each = var.gateway_id != null ? [1] : []

    content {
      cidr_block = var.cidr_block
      gateway_id = var.gateway_id
    }
  }

  dynamic "route" {
    for_each = var.nat_gateway_id != null ? [1] : []

    content {
      cidr_block     = var.cidr_block
      nat_gateway_id = var.nat_gateway_id
    }
  }

  tags = {
    Name : var.name
  }
}