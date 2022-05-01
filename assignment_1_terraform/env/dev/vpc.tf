
module "vpc_mname" {
  source = "..\\..\\modules\\aws\\vpc"
  cidr_block = "10.0.0.0/20"
  enable_dns_support = true
  enable_dns_hostnames = true
  env = var.env
}
