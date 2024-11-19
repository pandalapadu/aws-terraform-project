variable "instance_names" {
  type    = list(any)
  default = ["db", "backend", "frontend"]
}

variable "image_id" {
  type        = string
  default     = "ami-0dee22c13ea7a9a67"
  description = " this is Ubutu AMi for our testing "
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "common_tags" {
  default = {
    Project     = "Expense"
    Environment = "Dev"
    owner       = "Venkat"
    Terraform   = "True"

  }
}
#Route 53 variables 
variable "zone_id" {
  default = "Z07365092QMUDYTJRJ7W1"
}
variable "domain_name" {
  default = "kunamvenkat.xyz"
}


#below all are from Security Group variables 
variable "sg_name" {
  default = "allow_traffic"
}
variable "sg_description" {
  default = "Allow inbound traffic and all outbound traffic"
}
variable "sg_from_port" {
  default = 22
}

variable "sg_protocal" {
  default = "Tcp"
}
variable "sg_cidr_block" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}