# ops/terraform/iam/variables.tf

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "role_name" {
  description = "The name of the IAM role"
  type        = string
  default     = "example-role"
}

variable "policy_arn" {
  description = "The ARN of the IAM policy to attach to the role"
  type        = string
  default     = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
