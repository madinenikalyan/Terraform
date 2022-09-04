variable "region" {
  type        = string
  description = "AWS Region the instance is launched in"
  default     = ""
}

variable "instance_class" {
  description = "Instance size"
  default     = "db.t2.small"
}

variable "rds_username" {
  description = "RDS root user"
  default     = "root"
}

variable "engine" {
  description = "RDS engine: mysql, oracle, postgres. Defaults to mysql"
  default     = "mysql"
}

variable "engine_version" {
  description = "Engine version to use, according to the chosen engine. You can check the available engine versions using the [AWS CLI](http://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-engine-versions.html). Defaults to 5.7.17 for MySQL."
  default     = "5.7"
}

variable "tags" {
  description = "A tag used to identify an RDS in a project that has more than one RDS"
  default     = ""
}

variable "port" {
  description = "The port on which the DB accepts connections."
  default     = null
}

variable "subnet_group_name" {
  description = "(Optional) A DB subnet group to associate with this DB instance."
  default     = ""
}

variable "subnet_ids" {
  default     = ""
}

variable "identifier" {
  description = " The cluster identifier."
  default     = ""
}

