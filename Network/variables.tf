
variable "region" {
  default     = "us-east-1"
  type        = string
  description = "Region of the VPC"
}

variable "vpc_name" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
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