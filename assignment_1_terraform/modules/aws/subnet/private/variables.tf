##pubic subnet specific variables
variable "env" {
  type        = string
  description = "env for vpc"
}

 variable in_vpcid {
   type = any
 }

 variable in_cidrblock {
   type = any
 }

  variable in_az {
   type = any
 }


variable "in_enablepublicip" {
  type        = bool
  description = "enable public ip mapping"
}

#used to name the tags 1:1 mapping with CIDR block
variable "in_softwaretypes" {
  default = ["app","app","db","db"]
  type        = list
  description = "used to name the tags with proper key name. Ex: app, db"
}


#used to name the tags
variable "in_natgwid" {
  type        = any
  description = "used to associate the natgwid to private subnet for traffic out"
}
