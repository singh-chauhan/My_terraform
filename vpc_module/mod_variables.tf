variable "AWS_region" {
    description = "AWS Region to deploy resources"
    type = string
    default = "ap-south-1"
  
}

variable "vpc_cidr" {
    description = "CIDR block for VPC"
    type = string
    default = "10.0.1.0/16"
  
}

variable "subnet_newbits" {
    description = "Number of new bits to add to VPC CIDR to generate new subnets (e.g: 8 means /24 as CIDR block /16+8)"
    type = number
    default = 8
  
}

variable "tags" {
    description = "Global tage to apply all resources"
    type = map(string)
    default = {
      Terraform = "true"
    }
  
}

variable "environment_name" {
    description ="Environment name used in resource names and tags"
    type = string
    default = "prod"
  
}