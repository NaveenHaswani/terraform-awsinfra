output "public_route_table_ids" {
  description = "id of new route tables created"
  value       = aws_route_table.public_route_table[*].id
}