#Create elastic ip
resource "aws_eip" "nat_eip" {
  instance = null
  domain   = var.eip_domain
}