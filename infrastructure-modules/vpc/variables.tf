# VPC
variable "enabled" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type        = bool
  default     = true
}
variable "instance-tenancy" {
  default = "default"
}
variable "enable-dns-support" {
  default = "true"
}

variable "enable-dns-hostnames" {
  default = "true"
}
# VPC Location
variable "vpc-location" {
  default = ""
}
# Internet Gateways Tags
variable "internet-gateway-name" {
  description = "Additional tags for the internet gateway"
  default     = "igw"
}
# Public Subnet Tags
variable "map_public_ip_on_launch" {
  default = "true"
}
variable "public-subnets-name" {
  default = "public-subnets"
}
variable "public-subnet-routes-name" {
  default = "public-routes"
}
# Nat Gate Ways
variable "total-nat-gateway-required" {
  default = "1"
}
# Elastic IP Tags

variable "eip-for-nat-gateway-name" {
  default = "eip-nat-gateway"
}

# Nat Gate Way Tags

variable "nat-gateway-name" {
  default = "nat-gateway"
}


# Private Route Cidr
variable "private-route-cidr" {
  default = "0.0.0.0/0"
}

# Private Route Tags
variable "private-route-name" {
  default = "private-routes"
}
# VPC Cidr Block
variable "vpc-cidr" {
  default = ""
}
# VPC Public Subnets Cidr Block List
variable "vpc-public-subnet-cidr" {
  type = list(string)
}
# VPC Private Subnets Cidr Block List
variable "vpc-private-subnet-cidr" {
  type = list(string)
}
# Private Subnets Tags
variable "private-subnet-name" {
  default = "private-subnets"
}
# FETCH AZS From Region
data "aws_availability_zones" "azs" {}
# Database Subnets
# list of database subnets
variable "vpc-database_subnets-cidr" {
  type        = list(string)
  default     = []
}
variable "db-subnets-name" {
  default = "db-subnet"
}
variable "db-routes-name" {
  default = "db-route"
}
# Controls if database subnet group should be created
variable "create_database_subnet_group" {
  type        = bool
  default     = false
}
variable "db-subnets-group-name" {
  default = "db-subnet-group"
}