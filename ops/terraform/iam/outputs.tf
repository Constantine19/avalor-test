# ops/terraform/iam/outputs.tf

output "role_name" {
  description = "The name of the IAM role"
  value       = aws_iam_role.example.name
}
