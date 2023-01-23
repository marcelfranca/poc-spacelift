resource "spacelift_stack" "managed-stack" {
  name = "Spacelift POC"

  # Source code.
  repository = "poc-spacelift"
  branch     = "main"
  project_root = "aws"
}

