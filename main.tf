terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.34"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

#1
module "customer_gateway" {
  source = "./customer_gateway"

  customer_ip_address = var.customer_public_ip

  environment      = var.environment
  application_name = var.application_name
}

#2
module "vpn_gateway" {
  source = "./vpn_gateway"

  vpc_id = var.vpc_id

  environment      = var.environment
  application_name = var.application_name
}

#3
module "route_table" {
  source = "./route_table"

  vpc_id          = var.vpc_id
  customer_subnet = var.cidr_customer_subnet
  vpn_gateway_id  = module.vpn_gateway.id

  internet_gateway_id = var.internet_gateway_id

  subnet_ids_on_vpn = var.subnet_ids_on_vpn

  environment      = var.environment
  application_name = var.application_name

  depends_on = [
    module.vpn_gateway
  ]
}

#3
module "gateway_route_propagation" {
  source = "./gateway_route_propagation"

  route_table_id = module.route_table.id
  vpn_gateway_id = module.vpn_gateway.id

  environment      = var.environment
  application_name = var.application_name

  depends_on = [
    module.route_table,
    module.vpn_gateway
  ]
}

#4 
module "security_group" {
  source = "./security_group"

  name = "Allow all VPN"

  vpc_id          = var.vpc_id
  subnets = [var.cidr_customer_subnet]

  environment      = var.environment
  application_name = var.application_name

}

#Forse devo attaccare il security group alla vpc

#5
module "vpn_connection" {
  source = "./vpn_connection"

  vpn_gateway_id      = module.vpn_gateway.id
  customer_gateway_id = module.customer_gateway.id
  customer_subnet     = var.cidr_customer_subnet

  environment      = var.environment
  application_name = var.application_name

  depends_on = [
    module.customer_gateway,
    module.vpn_gateway
  ]
}