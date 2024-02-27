output "private_subnet_ids" {
  description = "id of new private subnet created"
  value       = aws_subnet.private_subnets[*].id
}