# ops/terragrunt/production/us-east-2/rds/terragrunt.hcl

include {
  path = find_in_parent_folders()
}

inputs = {
  environment = "production"
  region      = "us-east-2"
}

