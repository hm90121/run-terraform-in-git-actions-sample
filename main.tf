terraform {                                       
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {                    
  region = "us-east-1"
  access_key = "AKIAXSPZ33SEY3IRIEW7"
  secret_key = "xxxx"
}
resource "aws_instance" "web" {       
    ami = "ami-06e46074ae430fba6"
    instance_type = "t2.micro"

    tags = {
        Name = "hello-world"
    } 
}
