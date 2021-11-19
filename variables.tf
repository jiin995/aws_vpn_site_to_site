variable "aws_profile" {
  type        = string
  description = "AWS profile name"
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
}


/* Env variables */
variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "application_name" {
  description = "Application/Product Name"
  default     = "demo"
}
/*end*/

/* AWS Net variables*/
variable "vpc_id" {
  description = "VPC id"

  type = string
}

variable "internet_gateway_id" {
  description = "Existing Internet Gateway id"

  type = string
}


variable "subnet_ids_on_vpn" {
  description = "ID of existing subnets that  can be reachable through VPN"

  type = list(string)
}
/*end*/

/* Customer Variables */
variable "customer_public_ip" {
  description = "Customer Public IP Address, if device is behind NAT is NAT Public IP"

  type = string
}

variable "cidr_customer_subnet" {
  description = "CIDR of customer subnet"

  type = string
}
/*end*/