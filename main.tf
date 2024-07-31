provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = "us-east-1"

}


variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}


resource "aws_vpc" "dep1" {
    cidr_block = "172.28.0.0/16"
    tags = {
      "Name" = "myvpc123"
      
    }
    
}
