#module "vpc" {
#  source = "terraform-aws-modules/vpc/aws"
#
#  name = "sandbox-eks"
#  cidr = "192.168.0.0/16"
#
#  azs            = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
#  public_subnets = ["192.168.64.0/18", "192.168.128.0/18", "192.168.192.0/18"]
#
#  tags = {
#    Terraform   = "true"
#    Environment = "sandbox"
#  }
#}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "eks-sandbox"
  cidr = "10.0.0.0/16"

  azs             = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
#  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  tags = {
    Terraform = "true"
    Environment = "sandbox"
  }
}
