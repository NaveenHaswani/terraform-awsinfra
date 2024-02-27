output "private_route_table_ids" {
  description = "id of new rt created"
  value       = aws_route_table.private_route_table[*].id
}