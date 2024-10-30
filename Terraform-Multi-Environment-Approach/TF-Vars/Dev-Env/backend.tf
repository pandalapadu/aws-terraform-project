terraform {
  backend "s3" {
    bucket = "kunamvenkat.xyz"   # We will create Multiple buckets place the tfvars on each bucket 
    key    = "dev-myTerraform.tfvars"
    region = "ap-south-1"
  }
}
