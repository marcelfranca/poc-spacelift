# resource "aws_subnet" "public1" {
#   cidr_block              = "10.10.0.0/18"
#   vpc_id                  = aws_vpc.dev.id
#   availability_zone       = "us-west-2a"
#   map_public_ip_on_launch = true

#   tags = {
#     Name                                = "public-us-west-2a"
#     "kubernetes.io/cluster/dev-cluster" = "shared"
#     "kubernetes.io/role/elb"            = 1
#   }
# }

# resource "aws_subnet" "public2" {
#   cidr_block              = "10.10.64.0/18"
#   vpc_id                  = aws_vpc.dev.id
#   availability_zone       = "us-west-2b"
#   map_public_ip_on_launch = true

#   tags = {
#     Name                                = "public-us-west-2b"
#     "kubernetes.io/cluster/dev-cluster" = "shared"
#     "kubernetes.io/role/elb"            = 1
#   }
# }

# resource "aws_subnet" "private1" {
#   cidr_block        = "10.10.128.0/18"
#   vpc_id            = aws_vpc.dev.id
#   availability_zone = "us-west-2a"

#   tags = {
#     Name                                = "private-us-west-2a"
#     "kubernetes.io/cluster/dev-cluster" = "shared"
#     "kubernetes.io/role/internal-elb"   = 1
#   }
# }

# resource "aws_subnet" "private2" {
#   cidr_block        = "10.10.192.0/18"
#   vpc_id            = aws_vpc.dev.id
#   availability_zone = "us-west-2b"

#   tags = {
#     Name                                = "private-us-west-2b"
#     "kubernetes.io/cluster/dev-cluster" = "shared"
#     "kubernetes.io/role/internal-elb"   = 1
#   }
# }
