variable "aws_region" {   
 type  = string
 }
variable "vpc_cidr" {   
 type  = string
 }
variable "name" {   
 type  = string
 }
variable "Public_subnet_cidr" {   
 type  = list(string)
 }
variable "Public_subnet_name" {   
 type  = list(string)
 } 
variable "Private_subnet_cidr" {   
 type  = list(string)
 }
variable "Private_subnet_name" {   
 type  = list(string)
 } 
variable "Name_igw" {   
 type  = string
 } 
variable "eip_domain_name" {   
 type  = string
 } 
variable "nat_gateway_name" {   
 type  = string
 }
variable "public_route_table_name" {   
 type  = string
 }
variable "private_route_table_name" {   
 type  = string
 }
variable "rt_cidr" {
  type  = string
 }
variable "instance_type" {
  type  = string
 }
variable "key_pair_name" {
  type  = string
 }
variable "public_instance_name" {
  type  = string
 }
 variable "private_instance_name" {
  type  = string
 }