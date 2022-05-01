

locals {
  total_natgw = length(var.in_public_subnetid) 
}

resource "aws_nat_gateway" "my_nat" {
count   = local.total_natgw
allocation_id = var.in_eip_allocationid[count.index]

subnet_id = var.in_public_subnetid[count.index]


    tags = {
        Name = "${var.env}-natgw-${var.in_public_subnetid[count.index]}"
    }


}