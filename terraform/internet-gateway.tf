### InternetGateway

resource "aws_internet_gateway" "helix_cloud_igw" {
  vpc_id = aws_vpc.helix_cloud_vpc.id
  tags = {
    Name = "helix_cloud_igw"
  }
}
