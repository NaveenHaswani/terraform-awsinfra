output "vpc_id_root" {
    value = module.aws_vpc.id_vpc
}

output "public_subnet_id_root" {
    value = module.aws_public_subnet.public_subnet_ids
}

output "private_subnet_id_root" {
    value = module.aws_private_subnet.private_subnet_ids
}

output "igw_id" {
    value = module.aws_igw.igw_id
}

output "eip_id" {
    value = module.aws_eip.eip_ip
}

output "nat_gw_id" {
    value = module.aws_nat.nat_gateway_id
}

output "pub_route_table_ids" {
    value = module.aws_public_rt_table.public_route_table_ids
}

output "priv_route_table_ids" {
    value = module.aws_private_rt_table.private_route_table_ids
}