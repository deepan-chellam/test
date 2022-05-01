


 module "eip_mname" {
   source = "..\\..\\modules\\aws\\eip"
   env = "dev"
#    in_total_natgw = module.natgw_mname.out_total_natgw
}
