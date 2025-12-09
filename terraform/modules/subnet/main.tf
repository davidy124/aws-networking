resource "aws_subnet" "subnets" {
  count             = length(var.subnets)
  vpc_id            = var.vpc_id
  cidr_block        = var.subnets[count.index].cidr_block
  availability_zone = var.subnets[count.index].avail_zone
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags              = {
    Name = var.subnets[count.index].name
  }
}
