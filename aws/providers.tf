provider "aws" {
  region = "us-west-2"

  assume_role {
    role_arn     = "arn:aws:iam::632487292758:role/admin_spacelift"
    session_name = "spacelift"
    duration = "1h"
  }
}
