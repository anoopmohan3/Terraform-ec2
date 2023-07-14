data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "ec2" {
  depends_on             = [aws_key_pair.kp,aws_vpc.main]
  ami                    = data.aws_ami.amzn-linux-2023-ami.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name               = aws_key_pair.kp.key_name


  tags = {
    Name = "tf-example"
  }
}