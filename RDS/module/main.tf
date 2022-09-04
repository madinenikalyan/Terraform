resource "aws_db_instance" "rds" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.rds_username
  password             = var.rds_password
  tags                 = var.tags
  port                 = var.port
  multi_az             = var.multi_az
  db_subnet_group_name = var.db_subnet_group_name
  license_model             = var.license_model
  backup_retention_period   = var.backup_retention_period
  identifier     =var.identifier
}