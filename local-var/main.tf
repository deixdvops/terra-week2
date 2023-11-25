terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }

  }
}

provider "aws" {
  region  = var.region
  profile = var.aws_profile
}

locals {
  env= "dev"
}
output "env" {
    value = local.env
  
}
module "vpc" {
    source = "github.com/kserge2001/terraform-week7"
  
}