# variable "image_id" {
#   type        = string
#   default     = "ami-0dee22c13ea7a9a67"
#   description = " this is Ubutu AMi for our testing "
# }
variable "instance_names" {
  type    = list
  default = ["web", "app", "db"]
}
