variable "region" {
  type        = string
  description = "AWS Region the instance is launched in"
  default     = ""
}

variable "security_group_id" {
  type        = string
  description = "Security Group Id"
  default     = ""
}

variable "sg_rules" {
  type        = map(any)
  description = "Security Rules Associated to security group"
}