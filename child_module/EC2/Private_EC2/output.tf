output "private_instance_id" {
  description = "id of new private_instance created"  
  value = aws_instance.private_ec2[0].id
}