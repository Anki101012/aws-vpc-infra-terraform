output "vpc_id" {
  value = aws_vpc.helix_cloud_vpc.id
}

output "public_ec2_public_ip" {
  value = aws_instance.public_ec2.public_ip
}

output "public_ec2_private_ip" {
  value = aws_instance.public_ec2.private_ip
}

output "public_subnet_1_id" {
  value = aws_subnet.public_subnet_1.id
}

output "private_subnet_1_id" {
  value = aws_subnet.private_subnet_1.id
}

output "private_ec2_private_ip" {
  value = aws_instance.private_ec2.private_ip
}
