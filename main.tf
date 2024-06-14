terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = var.aws-access_key
  secret_key =  var.aws-secret_key
}

resource "aws_instance" "web" {
    ami = "ami-0f58b397bc5c1f2e8"
    instance_type = "t2.micro"
    tags = "nodejs"
  
}
