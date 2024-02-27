# Create public subnets
resource "aws_subnet" "public_subnets" {
  count                   = length(var.public_subnet_cidr_blocks)
  vpc_id                  = var.id_vpc 
  cidr_block              = var.public_subnet_cidr_blocks[count.index]
 
  map_public_ip_on_launch = true
  tags = {
    Name = var.public_subnet_name[count.index]
  }
}