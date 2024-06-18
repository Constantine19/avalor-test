# ops/terragrunt/staging/us-east-1/rds/terragrunt.hcl

include {
  path = find_in_parent_folders()
}

inputs = {
  environment = "staging"
  region      = "us-east-1"
}
