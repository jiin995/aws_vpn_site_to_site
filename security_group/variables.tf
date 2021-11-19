variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "application_name" {
  description = "Application/Product Name"
  default     = "demo"
}

variable "name" {
  description = "Customer Subnet can be reachable through VPN"
}

variable "subnets" {
  description = "Customer Subnet can be reachable through VPN"
  default     = ["0.0.0.0/0"]
}

variable "vpc_id" {
  description = "Id of the VPC that can be reached through vpn"
}
