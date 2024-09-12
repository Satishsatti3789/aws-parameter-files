terraform {
  backend "s3" {
    bucket = "terraform-roboshop"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}
