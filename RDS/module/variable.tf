variable "allocated_storage" {
  description = "When configured, the upper limit to which Amazon RDS can automatically scale the storage of the DB instance. Configuring this will automatically ignore differences to allocated_storage. Must be greater than or equal to allocated_storage or 0 to disable Storage Autoscaling."
  type        = string
  default     = "20"
}

variable "instance_class" {
  description = "Instance size"
  default     = "db.t2.small"
}

variable "rds_password" {
  description = "RDS root password"
}

variable "rds_username" {
  description = "RDS root user"
  default     = "root"
}

variable "engine" {
  description = "RDS engine: mysql, oracle, postgres. Defaults to mysql"
  default     = "mysql"
}

variable "multi_az" {
  description = "Multi AZ true or false"
  default     = true
}

variable "engine_version" {
  description = "Engine version to use, according to the chosen engine. You can check the available engine versions using the [AWS CLI](http://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html). Defaults to 5.7.17 for MySQL."
  default     = "5.7"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}


variable "port" {
  description = "The port on which the DB accepts connections."
  default     = null
}

variable "db_subnet_group_name" {
  description = "(Optional) A DB subnet group to associate with this DB instance."
  default     = ""
}


variable "license_model" {
  description = "The license_model for RDS MSSQL."
  default     = ""
}
variable "backup_retention_period" {
  description = "The backup_retention_period for RDS MSSQL."
  default     = "3"
}

variable "identifier" {
  description = " The cluster identifier."
  default     = ""
}
