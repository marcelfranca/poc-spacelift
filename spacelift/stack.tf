resource "spacelift_stack" "managed-stack" {
  name = "Stack managed by Spacelift"

  # Source code.
  repository = "poc-spacelift"
  branch     = "main"
  project_root = "aws"
}

