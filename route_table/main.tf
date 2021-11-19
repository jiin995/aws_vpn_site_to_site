resource "aws_route_table" "main" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.customer_subnet
    gateway_id = var.vpn_gateway_id
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = "${var.application_name}-${var.environment}-route_table"
  }
}

resource "aws_route_table_association" "associations" {

  for_each = toset(var.subnet_ids_on_vpn)

  subnet_id      = each.key
  route_table_id = aws_route_table.main.id
}