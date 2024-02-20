#Creating EC2 instance in Public subnet 
resource "aws_instance" "wordpress8_ec2" {
  ami                         = "ami-0cf7b2f456cd5efd4"
  instance_type               = "t2.micro"
  key_name                    = "new-key"
  vpc_security_group_ids      = [aws_security_group.demosg.id]
  subnet_id                   = aws_subnet.wp_subnet-1.id
  associate_public_ip_address = "true"
  user_data                   = file("data1.sh")
  tags = {
    Name = "My Public Instance-1"
  }
}

