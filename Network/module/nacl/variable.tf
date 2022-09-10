variable "nacl_name" {
  description = "route table name"
  default = ""
}


variable "nacl_subnet_id" {
  type        = list(string)
  description = "VPC id "
  default = [""]
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}

variable "vpc_id" {
  type        = string
  description = "VPC id "
}