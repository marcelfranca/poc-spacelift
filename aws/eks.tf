# resource "aws_iam_role" "eks_cluster" {
#   name               = "spacelift-eks"
#   assume_role_policy = <<POLICY
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "eks.amazonaws.com"
#       },
#       "Action": "sts:AssumeRole"
#     }
#   ]
# }
# POLICY
# }

# resource "aws_iam_role_policy_attachment" "amazon_eks_cluster_policy" {
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
#   role       = aws_iam_role.eks_cluster.name
# }

# resource "aws_eks_cluster" "eks" {
#   name     = "dev-cluster"
#   role_arn = aws_iam_role.eks_cluster.arn
#   vpc_config {
#     endpoint_private_access = false
#     endpoint_public_access  = true
#     subnet_ids = [
#       aws_subnet.public1.id,
#       aws_subnet.public2.id,
#       aws_subnet.private1.id,
#       aws_subnet.private2.id
#     ]
#   }

#   depends_on = [aws_iam_role_policy_attachment.amazon_eks_cluster_policy]
# }
