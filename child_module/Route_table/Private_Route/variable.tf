variable "rt_cidr_block" {
  type = string
}

variable "id_vpc" {
  type = string
}

variable "private_rt_name" {
  type = string
}

variable "aws_nat_gateway_id" {
  type = string
}
variable "private_subnet_cidr_blocks" {
  type = list(string)
}

variable "aws_private_subnet_id" {
  type = list(string)
}

variable "aws_private_rt_id" {
  type = list(string)
}