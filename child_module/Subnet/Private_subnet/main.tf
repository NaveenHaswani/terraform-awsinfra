# Create private subnets

resource "aws_subnet" "private_subnets" {
  count             = length(var.private_subnet_cidr_blocks)
  vpc_id            = var.id_vpc 
  cidr_block        = var.private_subnet_cidr_blocks[count.index]
   tags = {
    Name = var.private_subnet_name[count.index]
  }
}