


variable "env" {
  type = string
}

variable "aws_region_name" {
  type = string
}
variable "availability_zone_names" {
  type    = list(string)
}


variable "ec2_instance_type" {
  type    = string
}

variable "db_instance_type" {
  type    = string
}

variable "db_username" {
  type    = string
}

variable "db_password" {
  type    = string
}

variable "total_rds_instances" {
  type    = number
}

variable "appserver_desired_capacity" {
  type    = number
}


