# VPC Configuration
vpc-cidr = "172.18.0.0/16"
instance-tenancy = "default"
vpc-name = "main-vpc-01"

# Public Subnet Configuration
public-subnets-cidr = ["172.18.0.0/19","172.18.32.0/19" ]
subnets-azs = ["us-east-2b","us-east-2c"]
pub-sub-name = ["pub-sub-01","pub-sub-02"]

# Private Subnet Configuration
private-subnets-cidr = ["172.18.64.0/19","172.18.96.0/19"]
pri-sub-name = ["priv-sub-01","priv-sub-02"]

## Public SG
pub-sg-name = "public-sg1"
pub-sg-ports = [0]
cidr_blocks = ["0.0.0.0/0"]
public-sg-protocol = "-1"

## Private SG
pvt-sg-name = "private-sg1"
pvt-sg-ports = [22, 80, 443, 8080]
pvt_cidr_blocks = ["0.0.0.0/0"]

# Other Configuration
nat_name = "test-nat-01"
eip-domain = "vpc"
igw_name = "test-igw-01"
private-rt-name = "test-route-priv-01"
destination-cidr = "0.0.0.0/0"
public-rt-name = "test-route-pub-01"
existing_vpc_cidr_block = "172.16.0.0/16"

existing_vpc_route_table_id = "rtb-003dd2f61a6a2e814"
new_vpc_cidr_block = "172.18.0.0/16"

ami-id = "ami-07b36ea9852e986ad"
instance-type = "t2.medium"
key-name = "MH-01.pem"
bastion-instance-name = "bastion"
private-instance-name = ["private-instance-01", "private-instance-02"]

## Target tg
target_group_name = "Sonar-tg"
target_group_port = "8080"
target_group_protocol = "HTTP"
health_check_path = "/"
health_check_protocol = "HTTP"
health_check_port = "8080"
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
peer_vpc_id = "vpc-09a760a9657bbe867"
peer_owner_id = "945711723952"
peering_tag = "Sonar_vpc_peering"
auto_accept = true
accepter_allow_remote_vpc_dns_resolution = true
requester_allow_remote_vpc_dns_resolution = true
