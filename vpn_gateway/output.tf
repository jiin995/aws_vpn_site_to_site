output "id" {
  value       = aws_vpn_gateway.main.id
  description = "description"
  depends_on  = [aws_vpn_gateway.main]
}
