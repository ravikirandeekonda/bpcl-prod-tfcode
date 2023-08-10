provider "aws" {
  region = "ap-southeast-1"
}

module "vpcmod" {
  source = "../modules/vpc"
}

module "ec2mod" {
  source         = "../modules/ec2"
  publicsubent1a = module.vpcmod.publicsubnet1a
  jenkinsg       = module.vpcmod.jenkinsg
}