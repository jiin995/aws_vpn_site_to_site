resource "aws_security_group" "main" {
  name        = var.name
  description = "Allow inbound traffic from vpn"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.subnets
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.application_name}-${var.environment}-security_group"
  }
}