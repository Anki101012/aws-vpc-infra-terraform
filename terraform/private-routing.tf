### Private RouteTables

resource "aws_route_table" "helix_cloud_private_route_table" {
  vpc_id = aws_vpc.helix_cloud_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.helix_cloud_nat.id
  }

  tags = {
    Name = "helix_cloud_private_route_table"
  }
}

### Route Association with Private Subnet

resource "aws_route_table_association" "association_to_private_subnet_1" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.helix_cloud_private_route_table.id
}

resource "aws_route_table_association" "association_to_private_subnet_2" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.helix_cloud_private_route_table.id
}
