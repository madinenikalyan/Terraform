variable "nat_name" {
  description = "route table name"
  default = ""
}


variable "nat_subnet_ids" {
  type        = string
  description = "VPC id "
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}