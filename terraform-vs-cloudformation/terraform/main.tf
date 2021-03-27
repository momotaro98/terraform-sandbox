terraform {
  required_version = ">= 0.13.5"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.24.1"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

provider "aws" {
  region = "ap-northeast-1"
  alias = "ap_northeast"
}
