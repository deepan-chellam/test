


module "subnet_public_mname" {
   source = "..\\..\\modules\\aws\\subnet\\public"
   in_vpcid = module.vpc_mname.out_vpcid
   in_cidrblock = ["10.0.1.0/24","10.0.2.0/24"]
   in_az = ["us-east-2a","us-east-2b"]
   in_enablepublicip = true
   env = "dev"
   in_igwid = module.igw_mname.out_igwid
 }

# Availability zone should have 1:1 mapping with CIDR range
 module "subnet_private_mname" {
   source = "..\\..\\modules\\aws\\subnet\\private"
   in_vpcid = module.vpc_mname.out_vpcid
   in_cidrblock = ["10.0.3.0/24","10.0.4.0/24","10.0.5.0/24","10.0.6.0/24"]
   in_az = ["us-east-2a","us-east-2b","us-east-2a","us-east-2b"]
   in_enablepublicip = false
   env = "dev"
   in_natgwid= module.natgw_mname.out_natgwid
 }
