# Create internet gateway
resource "aws_internet_gateway" "ninja_igw" {
  vpc_id = var.id_vpc
  tags = {
    Name = var.igw_name
  }
}