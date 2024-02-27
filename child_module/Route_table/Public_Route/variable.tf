variable "public_rt_name" {
  type = string
}
 
variable "rt_cidr_block" {
  type = string
}

variable "id_vpc" {
  type = string
}

variable "aws_igw_id" {
  type = string
}

variable "aws_public_rt_id" {
  type = list(string)
}

variable "aws_public_subnet_id" {
  type = list(string)
}

variable "public_subnet_cidr_blocks" {
  type = list(string)
}