terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "devops-lab-2023"
    workspaces {
      prefix = "s3-bucket-demo-"
    }
  }
}
# This is an aws provider that use aws api call within terraform
provider "aws" {
    region = "us-east-2"
    secret_key = var.aws_secret_key
    access_key = var.aws_access_key
}
