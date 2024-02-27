# Create public route table
resource "aws_route_table" "public_route_table" {
  vpc_id = var.id_vpc 
  route {
    cidr_block = var.rt_cidr_block
    gateway_id = var.aws_igw_id
  }
  tags = {
    Name = var.public_rt_name
  }
}

# Associate public subnets with route tables
resource "aws_route_table_association" "public_subnet_associations" {
  count          = length(var.public_subnet_cidr_blocks)
  subnet_id      = var.aws_public_subnet_id[0]
  route_table_id = var.aws_public_rt_id[0]
}