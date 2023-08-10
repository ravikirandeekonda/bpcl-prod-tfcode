provider "aws" {
  region = "ap-southeast-1"
}

module "vpcmod" {
  source = "../modules/vpc"
}