# ops/terraform/rds/main.tf

provider "aws" {
  region = var.region
}

resource "aws_db_instance" "example" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.username
  password             = var.password
  parameter_group_name = "default.${var.engine}"

  tags = {
    Name = "example-rds-instance"
  }
}

output "db_instance_endpoint" {
  value = aws_db_instance.example.endpoint
}
