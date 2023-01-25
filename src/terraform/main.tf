terraform {
  required_version = "1.3.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.28.0"
    }
  }

  backend "s3" {
    bucket  = "terraform-devops-jwmffreitas"
    key     = "devops/terraform-k8s-rancher.tfstate"
    region  = "us-east-2"
    profile = "terraform-aws-pessoal"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "terraform-aws-pessoal"
}

module "rancher_k8s" {
  source = "./modules/rancher_k8s"

  git_user  = var.git_user
  git_token = var.git_token
}
