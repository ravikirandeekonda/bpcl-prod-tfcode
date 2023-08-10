provider "aws" {
  region = "ap-southeast-1"
}

module "vpcmod" {
  source = "../modules/vpc"
}

module "ec2mod" {
  depends_on     = [module.vpcmod]
  source         = "../modules/ec2"
  publicsubent1a = module.vpcmod.publicsubnet1a
  publicsubnet1b = module.vpcmod.publicsubent1b
  jenkinsg       = module.vpcmod.jenkinsg
  appsg          = module.vpcmod.appsg
}