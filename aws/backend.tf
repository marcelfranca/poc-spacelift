terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.50.0"
    }
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.0.1"
    }
  }
}
