# Create NAT gateway
resource "aws_nat_gateway" "ninja_nat" {
  allocation_id = var.allocation_id
  subnet_id     = var.nat_public_subnet_id
  tags = {
    Name = var.nat_name
  }
}
