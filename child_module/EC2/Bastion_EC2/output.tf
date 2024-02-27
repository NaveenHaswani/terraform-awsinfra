output "bastion_instance_id" {
  description = "id of new bastion instance created"  
  value = aws_instance.public_ec2[0].id
}