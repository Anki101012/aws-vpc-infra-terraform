### Public EC2

resource "aws_instance" "public_ec2" {
  ami                    = "ami-02dfbd4ff395f2a1b"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.helix_cloud_public_sg.id]
  key_name               = "helix_cloud_dev"
  tags = {
    Name = "public_ec2"
  }
}

resource "aws_instance" "private_ec2" {
  ami                    = "ami-02dfbd4ff395f2a1b"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.private_subnet_1.id
  vpc_security_group_ids = [aws_security_group.helix_cloud_private_sg.id]
  key_name               = "helix_cloud_dev"
  tags = {
    Name = "private_ec2"
  }
}
