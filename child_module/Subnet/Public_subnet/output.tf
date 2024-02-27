output "public_subnet_ids" {
  description = "id of new public subnet created"
  value       = aws_subnet.public_subnets[*].id
}
