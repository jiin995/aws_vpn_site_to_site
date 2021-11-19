variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "application_name" {
  description = "Application/Product Name"
  default     = "demo"
}

variable "customer_gateway_id" {
  description = "Id of the Customer gateway"
}

variable "vpn_gateway_id" {
  description = "Id of the VPN gateway"
}

variable "customer_subnet" {
  description = ""
}
