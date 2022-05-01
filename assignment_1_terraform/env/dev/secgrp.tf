


 module "secgrp_mname" {
   source = "..\\..\\modules\\aws\\secgrp"
   in_vpcid = module.vpc_mname.out_vpcid
   env = "dev"
 }
