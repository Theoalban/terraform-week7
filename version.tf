terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }

  }
}

provider "aws" {
  region = "us-east-1"

}

terraform {
  backend "s3" {
    bucket         = "mys3b2"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "stateLockTable"
  }
}
