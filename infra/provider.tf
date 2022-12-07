terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
  backend "s3" {
      bucket = "analyticsbucket"
      key    = "1036-data-analytics"
      region = "us-west-1"
    }
}