#This block below contains Terraform settings, including the required providers Terraform will use to provision my infra
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">=0.14.9"

}
#and above this block configure providers from terraform registry : here AWS
provider "aws" {
  profile = "defaults"
  region  = "us-west-2"
}
#resource blocks below is here in order to define components of my infrastructure. 

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
