# ops/terragrunt/common/iam.hcl

terraform {
  source = "../../terraform/iam"
}

inputs = {
  role_name     = "example-role"
  policy_arn    = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

include {
  path = find_in_parent_folders()
}

