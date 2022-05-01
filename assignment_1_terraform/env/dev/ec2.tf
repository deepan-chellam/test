module "ec2_public_mname" {
   source = "..\\..\\modules\\aws\\ec2\\public"
   in_vpcid = module.vpc_mname.out_vpcid
   in_instancetype = var.ec2_instance_type
   in_secgrpid_web = [module.secgrp_mname.out_secgrpid_web]
   in_public_subnetid= module.subnet_public_mname.out_public_subnetid
   in_az = ["us-east-2a","us-east-2b"]
   env = "dev"
 }


 module "ec2_private_mname" {
  #  source = "C:\\Users\\chellamu\\Desktop\\studycircle_2022\\labsetup\\kpmg-terraform\\modules\\aws\\ec2\\private"
  source = "..\\..\\modules\\aws\\ec2\\private"
   in_vpcid = module.vpc_mname.out_vpcid
   in_instancetype = var.ec2_instance_type
   in_secgrpid_app = [module.secgrp_mname.out_secgrpid_app]
   in_private_subnetid= module.subnet_private_mname.out_private_subnetid
   in_az = ["us-east-2a","us-east-2b"]
   env = "dev"
 }



 module "rds_mname" {
   source = "..\\..\\modules\\aws\\ec2\\rds"
   in_vpcid = module.vpc_mname.out_vpcid
   in_dbinstancetype = var.db_instance_type
   in_dbusername = var.db_username
   in_dbpassword = var.db_password
   in_secgrpid_rds = [module.secgrp_mname.out_secgrpid_RDS]
   in_private_subnetid= module.subnet_private_mname.out_private_subnetid
   in_az = ["us-east-2a","us-east-2b"]
   env = "dev"
   in_total_rds_instances=var.total_rds_instances
 }

 

