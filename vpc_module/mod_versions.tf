terraform {
  required_version = ">=1.13.0"
  required_providers {
    aws = {
      source="hashicorp/aws"
      version=">=6.0.0"
    }
  }
#Remote Backend
  backend "s3" {
    bucket = "tfstate-dev-ap-south-1-v5vth2"
    key="dev/vpc/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    use_lockfile = true
    
  }
}
provider "aws" {
    region = var.AWS_region
  
}
