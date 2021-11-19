resource "aws_vpn_gateway" "main" {

  vpc_id = var.vpc_id

  tags = {
    Name = "${var.application_name}-${var.environment}-vpn_gateway"
  }
}
