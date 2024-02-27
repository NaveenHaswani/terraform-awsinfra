variable "private_subnet_cidr_blocks" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "private_subnet_name" {
  default = ["Ninja-private-subnet-01", "Ninja-private-subnet-02"]
}

variable "id_vpc" {
  type = string
}
