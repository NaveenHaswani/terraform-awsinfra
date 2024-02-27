output "eip_ip" {
  description = "id of new eip created"
  value       = aws_eip.nat_eip.id
}