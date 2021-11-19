variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "application_name" {
  description = "Application/Product Name"
  default     = "demo"
}


variable "customer_ip_address" {
  description = "Customer Public IP Address, if device is behind NAT is NAT Public IP"
}