#Getting Public instance IP address
output "public_ip_adress" {
  description = "The Public IP of instance"
  value       = aws_instance.wordpress8_ec2.public_ip
}
