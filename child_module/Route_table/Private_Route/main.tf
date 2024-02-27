# Create private route table
resource "aws_route_table" "private_route_table" {
  vpc_id = var.id_vpc
  route {
    cidr_block = var.rt_cidr_block
    gateway_id = var.aws_nat_gateway_id
  }
  tags = {
    Name = var.private_rt_name
  }
}

# Associate private subnets with route tables
resource "aws_route_table_association" "private_subnet_associations" {
  count          = length(var.private_subnet_cidr_blocks)
  subnet_id      = var.aws_private_subnet_id[0]
  route_table_id = var.aws_private_rt_id[0]
}