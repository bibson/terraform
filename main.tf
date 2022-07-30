terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami = "ami-02f3416038bdb17fb"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-example"
  }

}
