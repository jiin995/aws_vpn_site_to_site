#Requests automatic route propagation between a VPN gateway and a route table.
resource "aws_vpn_gateway_route_propagation" "main" {
  vpn_gateway_id = var.vpn_gateway_id
  route_table_id = var.route_table_id
}