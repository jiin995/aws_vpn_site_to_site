resource "aws_customer_gateway" "main" {

  bgp_asn = 65000

  ip_address = var.customer_ip_address

  # Is only supported type
  type = "ipsec.1"

  tags = {
    Name = "${var.application_name}-${var.environment}-customer_gateway"
  }
}