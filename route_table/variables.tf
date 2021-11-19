variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "application_name" {
  description = "Application/Product Name"
  default     = "demo"
}


variable "customer_subnet" {
  description = "Customer Subnet can be reachable through VPN"
}

variable "vpc_id" {
  description = "Id of the VPC that can be reached through vpn"
}

variable "vpn_gateway_id" {
  description = "Id of the VPN gateway"
}

variable "internet_gateway_id" {
  description = "Internet Gateway ID"
}

variable "subnet_ids_on_vpn" {
  description = "ID of existing subnets that  can be reachable through VPN"

  type = list(string)
}