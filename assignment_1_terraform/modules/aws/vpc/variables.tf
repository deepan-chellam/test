variable "cidr_block" {
  type        = string
  description = "vpc: cidr block"
}

variable "enable_dns_support" {
  type        = bool
  description = "vpc: enabling dns support"
}



variable "enable_dns_hostnames" {
  type        = string
  description = "vpc: enabling dns hostname"
}

variable "env" {
  type        = string
  description = "env for vpc"
}


