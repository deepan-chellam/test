


 module "natgw_mname" {
   source = "..\\..\\modules\\aws\\natgw"
   env = "dev"
   in_eip_allocationid = module.eip_mname.out_eip_allocationid
   in_public_subnetid = module.subnet_public_mname.out_public_subnetid
}
