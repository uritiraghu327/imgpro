provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAX2SWBD6AGD3FP54O"
  secret_key = "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"
}

module "vpc" {
  source   = "../INFRA_MODULE/VPC_MODULE"
  vpc_name = "vpc01"
  vpc-ip   = "10.1.0.0/16"
  sub_name = "subnet01"
  sub-ip   = "10.1.1.0/24"
  igw_name = "igw01"
  rt-name  = "raghu99"

}