terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  # alias   = "prov1"
  region  = var.region_1
  profile = var.profile

  default_tags {
    tags = {
      Owner       = var.owner
      Practice    = "BBD AWS Accelerator"
    }
  }
}

provider "aws" {
  alias   = "prov2"
  region  = var.region_2
  profile = var.profile

  default_tags {
    tags = {
      Owner       = var.owner
      Practice    = "BBD AWS Accelerator"
    }
  }
}