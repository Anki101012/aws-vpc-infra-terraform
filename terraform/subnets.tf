### Public Subnets

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.helix_cloud_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet_1"
    Type = "public"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.helix_cloud_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet_2"
    Type = "public"
  }
}

### Private Subnets

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.helix_cloud_vpc.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "private_subnet_1"
    Type = "private"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.helix_cloud_vpc.id
  cidr_block        = "10.0.12.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "private_subnet_2"
    Type = "private"
  }
}
