resource "aws_db_subnet_group" "subnet_group" {
  name        = var.subnet_group_name
  subnet_ids  = var.subnet_ids
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

module "mysql" {
    source = "./module"
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  rds_username         = var.rds_username
  rds_password         = random_password.password.result
  port                 = var.port
  db_subnet_group_name = aws_db_subnet_group.subnet_group.name
  license_model             = "license-included"
  identifier = var.identifier
  tags = {
    "Name" = "Mssql-CN-Prod"
  }
}