terraform {

  backend "s3" {
    bucket = "eks-sandbox-terraform"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  version = "~> 2.0"
  region  = "ap-northeast-1"
}
