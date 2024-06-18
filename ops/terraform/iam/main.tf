# ops/terraform/iam/main.tf
terraform {
  backend "s3" {}
}

provider "aws" {
  region = var.region
}

resource "aws_iam_role" "example" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "example" {
  role       = aws_iam_role.example.name
  policy_arn = var.policy_arn
}

output "role_name" {
  value = aws_iam_role.example.name
}
