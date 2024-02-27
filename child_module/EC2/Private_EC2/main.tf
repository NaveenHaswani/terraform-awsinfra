# Create EC2 instance in private subnet
resource "aws_instance" "private_ec2" {
  count         = "1"
  ami           = var.ubuntu_ami
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  subnet_id = var.aws_private_subnet_ids[0]

  tags = {
    Name = var.private_instance_name
  }
}