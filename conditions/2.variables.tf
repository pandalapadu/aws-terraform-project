variable "image_id" {
  type        = string
  default     = "ami-0dee22c13ea7a9a67"
  description = " this is Ubutu AMi for our testing "
}
variable "instance_name" {
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
