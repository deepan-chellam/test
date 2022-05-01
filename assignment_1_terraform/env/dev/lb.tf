module "lb_mname" {
   source = "..\\..\\modules\\aws\\lb"
   in_vpcid = module.vpc_mname.out_vpcid
   in_private_ec2instanceid = module.ec2_private_mname.out_private_ec2instanceid
   in_secgrpid_ALB = [module.secgrp_mname.out_secgrpid_ALB]
   in_public_subnetid= module.subnet_public_mname.out_public_subnetid
   in_instancetype = var.ec2_instance_type
   in_desired_capacity = var.appserver_desired_capacity
   env = "dev"
   in_private_subnetid= module.subnet_private_mname.out_private_subnetid
   in_secgrpid_app = module.secgrp_mname.out_secgrpid_app
 }