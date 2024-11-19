variable "ami_id" {
  type = string
  default = "ami-0dee22c13ea7a9a67"
}
variable "instance_type" {
default = "t2.micro"
}

variable "tags" {
  type = map
  default = {}
}