### Elastic IP for NAT Gateway
resource "aws_eip" "helix_cloud_nat_eip" {

  domain = "vpc"

  tags = {
    Name = "helix_cloud_nat_eip"
  }
}

### Nat Gateway

resource "aws_nat_gateway" "helix_cloud_nat" {
  allocation_id = aws_eip.helix_cloud_nat_eip.allocation_id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = "helix_cloud_nat_gateway"
  }
}
