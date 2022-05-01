


module "igw_mname" {
  source = "..\\..\\modules\\aws\\igw"
  in_vpcid = module.vpc_mname.out_vpcid
  env = var.env
}
