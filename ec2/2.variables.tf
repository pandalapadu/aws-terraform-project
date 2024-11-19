variable "image_id" {
  type        = string
  default     = "ami-0dee22c13ea7a9a67"
  description = " this is Ubutu AMi for our testing "
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "tags" {
  default = {
    Project     = "Expense"
    Environment = "Dev"
    owner       = "Venkat"

  }
}
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