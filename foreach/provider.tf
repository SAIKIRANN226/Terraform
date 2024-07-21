terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "daws76s-remote-state"
    key    = "foreach"  # your bucket information will be saved here in foreach
    region = "us-east-1"
    dynamodb_table = "daws76s-locking"  # table name you are using to lock the bucket,here you need to reconfigure by "terraform init -reconfigure"
  }
}

provider "aws" {
  region = "us-east-1"
}