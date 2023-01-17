provider "aws" {
  region = "us-west-2"

  assume_role {
    role_arn     = "arn:aws:iam::632487292758:role/admin_spacelift"
    session_name = "spacelift"
    duration = "1h"
  }
}

variable "spacelift_key_id" {}
variable "spacelift_key_secret" {}

provider "spacelift" {
  api_key_endpoint = "https://your-account.app.spacelift.io"
  api_key_id       = var.spacelift_key_id
  api_key_secret   = var.spacelift_key_secret
}
