


resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_block
  instance_tenancy = "default"
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = "${var.env}-vpc"
  }
}
