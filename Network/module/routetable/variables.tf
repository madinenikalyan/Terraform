variable "rt_name" {
  description = "route table name"
  default = ""
}

variable "routetable_subnet_id" {
  type     = any
  description = "routetable_subnet_id"
}

# variable "routetable_gateway_id" {
#   default     = ""
#   description = "routetable_gateway_id "
# }

variable "vpc_id" {
  type        = string
  description = "VPC id "
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}