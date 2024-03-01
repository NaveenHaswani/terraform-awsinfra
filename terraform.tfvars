# VPC Configuration
vpc-cidr = "172.18.0.0/16"
instance-tenancy = "default"
vpc-name = "sonar-vpc-01"

# Public Subnet Configuration
public-subnets-cidr = ["172.18.0.0/19","172.18.32.0/19" ]
subnets-azs = ["ap-south-1a","ap-south-1b"]
pub-sub-name = ["sonar-public-sub-01","sonar-public-sub-02"]

# Private Subnet Configuration
private-subnets-cidr = ["172.18.64.0/19","172.18.96.0/19"]
pri-sub-name = ["sonar-private-sub-01","sonar-private-sub-02"]

## Public SG
pub-sg-name = "sonar-public-sg1"
pub-sg-ports = [0]
cidr_blocks = ["0.0.0.0/0"]
public-sg-protocol = "-1"

## Private SG
pvt-sg-name = "sonar-private-sg1"
pvt-sg-ports = [22, 80, 443, 9000]
pvt_cidr_blocks = ["0.0.0.0/0"]

# Other Configuration
nat_name = "sonar-nat-01"
eip-domain = "vpc"
igw_name = "sonar-igw-01"
private-rt-name = "sonar-route-priv-01"
destination-cidr = "0.0.0.0/0"
public-rt-name = "sonar-route-pub-01"
existing_vpc_cidr_block = "172.31.0.0/16"

existing_vpc_route_table_id = "rtb-066bc68f1b8661849"
new_vpc_cidr_block = "172.18.0.0/16"

ami-id = "ami-03bb6d83c60fc5f7c"
instance-type = "t2.medium"
key-name = "MH-01"
bastion-instance-name = "sonar-bastion"
private-instance-name = ["sonar-private-instance", "sonar-private-instance"]

## Target tg
target_group_name = "Sonar-tg"
target_group_port = "9000"
target_group_protocol = "HTTP"
health_check_path = "/"
health_check_protocol = "HTTP"
health_check_port = "9000"
health_check_interval = "5"
health_check_timeout = "2"
health_check_healthy_threshold = "2"
health_check_unhealthy_threshold = "2"
listener_port = "80"
listener_protocol = "HTTP"


## ALB

alb_name = "Sonar-alb"
internal = "false"


## vpc peering
peer_vpc_id = "vpc-052c217e23cc15bf7"
peer_owner_id = "061863859579"
peering_tag = "Sonar_vpc_peering"
auto_accept = true
accepter_allow_remote_vpc_dns_resolution = true
requester_allow_remote_vpc_dns_resolution = true
