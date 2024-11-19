module "ec2-test" {
  source = "../Terraform-Aws-Ec2"
  instance_type = "t3.small"
  ami_id = "ami-0dee22c13ea7a9a67"
  tags = {
    Name = "Terraform-Testing"
  }
}