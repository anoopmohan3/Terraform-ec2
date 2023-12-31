output "ec2-id" {
  value = aws_instance.ec2.id
}
output "ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}
output "ec2_private_ip" {
    value = aws_instance.ec2.private_ip 
}
output "vpc_id" {
  value = aws_vpc.main.id
}

