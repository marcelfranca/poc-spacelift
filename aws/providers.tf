provider "aws" {
  region = "us-west-2"

  assume_role {
    role_arn     = "arn:aws:iam::632487292758:role/admin_spacelift"
    session_name = "spacelift"
    duration = "1h"
  }
}


provider "spacelift" {
  api_key_endpoint = "https://marcelfranca.app.spacelift.io"
  api_key_id       = env.SPACELIFT_API_TOKEN
  api_key_secret   = env.SPACELIFT_OIDC_TOKEN
}
