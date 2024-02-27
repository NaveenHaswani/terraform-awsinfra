# Create VPC
resource "aws_vpc" "mainvpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}