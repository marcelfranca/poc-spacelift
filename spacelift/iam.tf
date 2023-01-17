# IAM role.
resource "aws_iam_role" "managed-stack" {
  name = "spacelift-managed-stack"

  assume_role_policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      jsondecode(
        spacelift_stack.managed-stack.aws_assume_role_policy_statement
      )
    ]
  })
}

# Attaching a nice, powerful policy to it.
resource "aws_iam_role_policy_attachment" "managed-stack" {
  role       = aws_iam_role.managed-stack.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Telling Spacelift stack to assume it.
resource "spacelift_stack_aws_role" "managed-stack" {
  stack_id = spacelift_stack.managed-stack.id
  role_arn = aws_iam_role.managed-stack.arn
}
