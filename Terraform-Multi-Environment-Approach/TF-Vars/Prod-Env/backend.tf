terraform {
  backend "s3" {
    bucket = "kunamvenkat.xyz"
    key    = "prod-myTerraform.tfvars"
    region = "ap-south-1"
  }
}