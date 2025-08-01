terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }
}

provider "aws" {
  region = "us-east-1" # Terraform need authentication to aws, we can give the accesskey and secretkey under this region also but it is not safe to do, because pushing into git or internet is not safety, we get mails from git, because anybody can connect to your aws account and create resources, so thats why we downloaded awsCLI2 for authentication to aws.
}