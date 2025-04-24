
terraform { 
  cloud { 
    
    organization = "rbpulumiOrg" 


    workspaces { 
      name = "tfrepo1" 
    } 
  } 
}






provider "aws" {
  region = "us-east-1"
  
}



resource "aws_vpc" "dep2" {
  cidr_block = "10.22.0.0/16"
  tags = {
    "Name" = "mytesttfvpc2"
  }
}
