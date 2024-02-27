variable "public_subnet_cidr_blocks" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_name" {
  type = list(string)
  default = ["Ninja-public-subnet-01", "Ninja-public-subnet-02"]
}

variable "id_vpc" {
  type = string
}
