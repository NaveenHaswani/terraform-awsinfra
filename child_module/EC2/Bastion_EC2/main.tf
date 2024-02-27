# Create EC2 instance in public subnet
resource "aws_instance" "public_ec2" {
  count         = "1"
  ami           = var.ubuntu_ami
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  subnet_id = var.aws_public_subnet_ids[0]
  # aws_subnet.public_subnets[0].id

  tags = {
    Name = var.public_instance_name
  }
}