terraform {                                       
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {                    
  region = "ap-northeast-1"
  access_key = "secrets.AWS_ACCESS_KEY_ID"
  secret_key = "secrets.AWS_SECRET_ACCESS_KEY"
}
resource "aws_instance" "web" {       
    ami = "ami-06e46074ae430fba6"
    instance_type = "t2.micro"

    tags = {
        Name = "hello-world"
    } 
}
