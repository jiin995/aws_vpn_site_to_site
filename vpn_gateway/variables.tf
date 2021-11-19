variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "application_name" {
  description = "Application/Product Name"
  default     = "demo"
}


variable "vpc_id" {
  description = "Id of the VPC that can be reached through vpn"
}