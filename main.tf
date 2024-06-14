terraform {
  required_providers {
    aws = {
      source = "hashicorp/azurerm"
      version = "5.53.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = var.aws-access_key
  secret_key = var.aws-secret_key
}

resource "aws_instance" "web" {
    ami = "ami-0f58b397bc5c1f2e8"
    instance_type = "t2.micro"
    tags = "nodejs"
  
}
