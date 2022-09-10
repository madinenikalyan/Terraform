variable "vpc_name" {
  default     = "TerraformVPC"
  type        = string
  description = "Name of the VPC"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}
variable "enable_dns_support" {
  type = bool
  description = "Enable DNS support "
  default = true
}
variable "enable_dns_hostnames" {
  type = bool
  description = "Enable DNS Hostname "
  default = true
}

variable "public_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of public subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of private subnet CIDR blocks"
}

variable "public_subnet_names" {
  type        = list(any)
  description = "List of private subnet Names"
}

variable "private_subnet_names" {
  type        = list(any)
  description = "List of private subnet Names"
}


variable "public_availability_zones" {
  type        = list(any)
  description = "List of availability zones"
}

variable "private_availability_zones" {
  type        = list(any)
  description = "List of availability zones"
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}
 
