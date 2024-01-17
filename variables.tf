variable "vpc_cidr" {
  default = "10.0.0.0/16"
  type = string
}
variable "enable_dns_hostnames" {
  default = true
  type = bool
}
variable "common_tags" {
  default = {}
  type = map
}
variable "vpc_tags" {
  default = {}
  type = map
}
variable "project_name" {
  default = ""
  type = string
}
variable "environment_name" {
  default = ""
  type = string
}
variable "igw_tags" {
  default = {}
  type = map
}
variable "public_subnets_cidr" {
type = list  
validation {
  condition = length(var.public_subnets_cidr) == 2
  error_message = "please give 2 public valid subnets cidr"
}
}
variable "public_subnets_tags" {
  default = {}
}

variable "private_subnets_cidr" {
type = list  
validation {
  condition = length(var.private_subnets_cidr) == 2
  error_message = "please give 2 private valid subnets cidr"
}
}
variable "private_subnets_tags" {
  default = {}
}
variable "database_subnets_cidr" {
type = list  
validation {
  condition = length(var.database_subnets_cidr) == 2
  error_message = "please give 2 database valid subnets cidr"
}
}
variable "database_subnets_tags" {
  default = {}
}
variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}
variable "private_route_table_tags" {
  default = {}
}
variable "database_route_table_tags" {
  default = {}
}
variable "is_peering_requried" {
  default = false
  type = bool
}
variable "acceptor_vpc_id" {
  default = ""
  type = string
}
variable "vpc_peering_tags" {
  default = {}
  type = map
}