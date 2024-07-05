locals {
  vpc_name = format("%s-net", "vpc-main")
}

module "vpc" {
  source           = "../../vpc"
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = format("%s-net", local.vpc_name)
  }
  vpc_tags = {
    ManagedWith = "Terraform"
    Service     = "AWS-Network"
  }
}