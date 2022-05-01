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

#used to name the tags
variable "in_softwaretype" {
  default = "web"
  type        = string
  description = "used to name the tags with proper key name. Ex: web"
}


#used to name the tags
variable "in_igwid" {
  type        = any
  description = "used to associate the igwid with public route table"
}