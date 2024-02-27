variable "instance_type" {
  type = string
}
variable "key_pair_name" {
  type = string
}
variable "private_instance_name" {
  type = string
}
variable "aws_private_subnet_ids" {
  type = list(string)
}
variable "ubuntu_ami" {
  type = string
}