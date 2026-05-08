terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }

  backend "s3" {
    bucket = "sr-remote-state-dev1"
    key    = "k8-eksctl"
    region = "us-east-1"
    encrypt      = true  
    use_lockfile = true 
  }
  }


provider "aws" { 
  # Configuration options
  region = "us-east-1"
}