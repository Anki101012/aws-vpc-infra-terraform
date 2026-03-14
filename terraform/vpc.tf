### VPC
resource "aws_vpc" "helix_cloud_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "helix_cloud_vpc"
    Environment = "dev"
  }
  enable_dns_support   = true
  enable_dns_hostnames = true
}
