


variable "env" {
  type        = string
  description = "env for vpc"
}

 variable "in_vpcid" {
   type = any
    description = "vpc id to create sec grp"
 }

  variable "in_private_ec2instanceid" {
   type = any
    description = "instance id of app servers in private subnet"
 }

 

variable "in_secgrpid_ALB" {
    type = any
 }
 

 
variable "in_public_subnetid" {
    type = any
}
 
variable "in_instancetype" {
   type = any
    description = "instance type"
 }

variable "in_desired_capacity" {
    type = number
}

variable "in_private_subnetid" {
   type = any
 }
 
variable "in_secgrpid_app" {
   type = any
 }
 
 


 

 

 
 
