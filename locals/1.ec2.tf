resource "aws_instance" "web" {
  ami           = local.ami_id
  #instance_type = var.instance_name == "frontend" ? "t3.small" : "t2.micro"
  instance_type = local.instance_type ##here we are holding values in locals 
  # vpc_security_group_ids = ["aws_security_group.sg.id"]
  tags = local.tags
}


