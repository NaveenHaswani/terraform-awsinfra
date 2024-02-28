
aws_region = "ap-south-1"

vpc_cidr = "10.0.0.0/16"

name = "Ninja-vpc"

Public_subnet_cidr = ["10.0.1.0/24", "10.0.2.0/24"]

Public_subnet_name = ["Ninja-public-subnet-01", "Ninja-public-subnet-02"]

Private_subnet_cidr = ["10.0.3.0/24", "10.0.4.0/24"]

Private_subnet_name =  ["Ninja-private-subnet-01", "Ninja-private-subnet-02"]

Name_igw = "ninja-igw"

eip_domain_name = "vpc"

nat_gateway_name = "ninja-nat"

public_route_table_name = "Ninja-vpc-rt-public"

private_route_table_name = "Ninja-vpc-rt-private"

rt_cidr = "0.0.0.0/0"

instance_type = "t2.medium"

key_pair_name = "MH-01"

public_instance_name = "PublicEC2-Ninja"

private_instance_name = "PrivateEC2-Ninja"

