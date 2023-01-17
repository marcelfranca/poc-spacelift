terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
      version = "1.0.1"
    }
  }
}


provider "spacelift" {
  api_key_endpoint = "https://marcelfranca.app.spacelift.io"
  api_key_id       = var.spacelift_key_id
  api_key_secret   = var.spacelift_key_secret
}
