resource "aws_vpc" "dev" {
  cidr_block                       = "10.10.0.0/16"
  instance_tenancy                 = "default"
  enable_dns_support               = true
  enable_dns_hostnames             = true
  enable_classiclink               = false
  enable_classiclink_dns_support   = false
  assign_generated_ipv6_cidr_block = false

  tags = {
    Name = "dev"
  }
}

output "vpc_id" {
  value     = aws_vpc.dev.id
  sensitive = false
}
