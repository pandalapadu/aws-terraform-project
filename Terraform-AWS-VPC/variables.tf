variable "project_name" {
  type = string
}
variable "environment" {
  type = string
}

variable "common_tags" {
  type = map(any)
  default = {
    project_name = "Expence"
    environment  = "Dev"
    Terraform    = "True"
    DevelopedBy  = "Venkat"
  }
}

#========VPC related Variables =====================
variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  type    = bool
  default = true
}
variable "vpc_tags" {
  type = map(any)
  default = {

  }
}
#======IGW Related Variables ========
variable "igw_tags" {
  type    = map(any)
  default = {}
}
#======Public Subnet Related Variables ========
variable "public_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Please Provide 2 Valid public subnet CIDR"
  }
}
variable "public_subnet_cidrs_tags" {
  type    = map(any)
  default = {}
}
#======Private Subnet Related Variables ========
variable "private_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Please Provide 2 Valid private subnet CIDR"
  }
}
variable "private_subnet_cidrs_tags" {
  type    = map(any)
  default = {}
}
#======Database Subnet Related Variables ========
variable "database_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "Please Provide 2 Valid database subnet CIDR"
  }
}
variable "database_subnet_cidrs_tags" {
  type    = map(any)
  default = {}
}

variable "database_subnet_group_tags" {
  type    = map(any)
  default = {}
}

###NAT gatewat Tags ##############
variable "nat_gateway_tags" {
  type    = map(any)
  default = {}
}
#### Public Route table ####
variable "public_route_table_tags" {
  type    = map(any)
  default = {}
}

#### Private Route table ####
variable "private_route_table_tags" {
  type    = map(any)
  default = {}
}

#### Database Route table ####
variable "database_route_table_tags" {
  type    = map(any)
  default = {}
}

#### Peering ####
variable "is_peering_required" {
  type    = bool
  default = false
}

variable "acceptor_vpc_id" {
  type    = string
  default = ""
}

variable "vpc_peering_tags" {
  type    = map(any)
  default = {}
}