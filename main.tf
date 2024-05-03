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
  access_key = "AKIAXSPZ33SEY3IRIEW7"
  secret_key = "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"
}
resource "aws_instance" "web" {       
    ami = "ami-0ed13fc891b36929f"
    instance_type = "t2.micro"

    tags = {
        Name = "hello-world"
    } 
}
