### Public RouteTables

resource "aws_route_table" "helix_cloud_public_route_table" {
  vpc_id = aws_vpc.helix_cloud_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.helix_cloud_igw.id
  }

  tags = {
    Name = "helix_cloud_public_route_table"
  }
}

### Route Association with Public Subnet

resource "aws_route_table_association" "association_to_public_subnet_1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.helix_cloud_public_route_table.id
}

resource "aws_route_table_association" "association_to_public_subnet_2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.helix_cloud_public_route_table.id
}
