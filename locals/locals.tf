locals {
  ami_id        = "ami-0dee22c13ea7a9a67"
  #instance_type = "t2.micro"
  instance_type = var.instance_name == "frontend" ? "t3.small" : "t2.micro"
  tags = {
    Name = "db"
  }
}
