module "aws_vpc" {
    source          = "/home/naveen/child_module/VPC"
    vpc_cidr_block  = var.vpc_cidr
    vpc_name        = var.name
}

module "aws_public_subnet" {
    source                    = "/home/naveen/child_module/Subnet/Public_subnet"
    public_subnet_cidr_blocks = var.Public_subnet_cidr
    public_subnet_name        = var.Public_subnet_name
    id_vpc                    = module.aws_vpc.id_vpc
    }

module "aws_private_subnet" {
    source                    = "/home/naveen/child_module/Subnet/Private_subnet"
    private_subnet_cidr_blocks = var.Private_subnet_cidr
    private_subnet_name       = var.Private_subnet_name
    id_vpc                    = module.aws_vpc.id_vpc
}

module "aws_igw" {
    source                    = "/home/naveen/child_module/IGW"
    id_vpc                    = module.aws_vpc.id_vpc
    igw_name                  = var.Name_igw
}

module "aws_eip" {
    source                    = "/home/naveen/child_module/EIP"
    eip_domain                = var.eip_domain_name
}

module "aws_nat" {
    source                    = "/home/naveen/child_module/NAT"
    allocation_id             = module.aws_eip.eip_ip
    nat_public_subnet_id      = module.aws_public_subnet.public_subnet_ids[0]
    nat_name                  = var.nat_gateway_name
}

module "aws_public_rt_table" {
    source              = "/home/naveen/child_module/Route_table/Public_Route"
    id_vpc              = module.aws_vpc.id_vpc
    rt_cidr_block       = var.rt_cidr
    aws_igw_id          = module.aws_igw.igw_id
    public_rt_name     = var.public_route_table_name
    aws_public_rt_id   = module.aws_public_rt_table.public_route_table_ids
    aws_public_subnet_id   = module.aws_public_subnet.public_subnet_ids
    public_subnet_cidr_blocks = var.Public_subnet_cidr

}

module "aws_private_rt_table" {
    source              = "/home/naveen/child_module/Route_table/Private_Route"
    id_vpc              = module.aws_vpc.id_vpc
    rt_cidr_block       = var.rt_cidr
    aws_nat_gateway_id  = module.aws_nat.nat_gateway_id
    private_rt_name     = var.private_route_table_name
    aws_private_rt_id   = module.aws_private_rt_table.private_route_table_ids
    aws_private_subnet_id   = module.aws_private_subnet.private_subnet_ids
    private_subnet_cidr_blocks = var.Private_subnet_cidr
}

module "aws_public_instance" {
    source                    = "/home/naveen/child_module/EC2/Bastion_EC2"
    aws_public_subnet_ids     = module.aws_public_subnet.public_subnet_ids
    instance_type       = var.instance_type
    key_pair_name       = var.key_pair_name
    public_instance_name     = var.public_instance_name
    ubuntu_ami       = data.aws_ami.ubuntu.id

}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["amazon"]

  filter {
   name = "name"
   values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230516"]
  }
}

module "aws_private_instance" {
    source                    = "/home/naveen/child_module/EC2/Private_EC2"
    aws_private_subnet_ids    = module.aws_private_subnet.private_subnet_ids[*]
    instance_type       = var.instance_type
    key_pair_name       = var.key_pair_name
    private_instance_name       = var.private_instance_name
    ubuntu_ami      = data.aws_ami.ubuntu.id
}

