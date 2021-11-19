output "id" {
  value       = aws_customer_gateway.main.id
  description = "description"
  depends_on  = [aws_customer_gateway.main]
}
