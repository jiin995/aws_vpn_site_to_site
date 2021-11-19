variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "application_name" {
  description = "Application/Product Name"
  default     = "demo"
}

variable "route_table_id" {
  description = "ID of route table can be propagate"
}

variable "vpn_gateway_id" {
  description = "ID of VPN Gateway"
}