# ops/terragrunt/common/rds.hcl

terraform {
  source = "../../terraform/rds"
}

inputs = {
  instance_class = "db.t2.micro"
  allocated_storage = 20
  db_name = "exampledb"
  engine = "mysql"
  username = "admin"
  password = "password"
}

include {
  path = find_in_parent_folders()
}
