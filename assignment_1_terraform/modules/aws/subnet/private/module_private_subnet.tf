

locals {
  max_private_subnet = length(var.in_cidrblock)
  total_private_routetable = length(distinct(var.in_az))
  private_routetable_distinct_az = distinct(var.in_az)
}


resource "aws_subnet" "my_private_subnet" {
  count                  = local.max_private_subnet
  vpc_id                 = var.in_vpcid
  cidr_block             = var.in_cidrblock[count.index]
  availability_zone      = var.in_az[count.index]
  map_public_ip_on_launch = var.in_enablepublicip

  tags = {
    Name = "${var.env}-subnet-private-${var.in_softwaretypes[count.index]}-${var.in_az[count.index]}"
  }
}


# two route tables creation for private route for two NATGW's
resource "aws_route_table" "my_private_routetable" {
      count   = local.total_private_routetable
      vpc_id  = var.in_vpcid

      tags = {
          Name = "${var.env}-private-rtable-${local.private_routetable_distinct_az[count.index]}"
        }

}

# attaching NATGW for internet traffic to private subnet instances
resource "aws_route" "my_private_route" {
        count = local.total_private_routetable
        route_table_id = aws_route_table.my_private_routetable[count.index].id
        destination_cidr_block = "0.0.0.0/0"
        nat_gateway_id = var.in_natgwid[count.index]

}

# 
resource "aws_route_table_association" "my_private_subnet_association" {
      count = local.max_private_subnet
      subnet_id = aws_subnet.my_private_subnet[count.index].id
      # route_table_id = aws_route_table.my_private_routetable.id


      route_table_id = var.in_az[count.index] == "us-east-2a" ? aws_route_table.my_private_routetable[0].id : aws_route_table.my_private_routetable[1].id
      # route_table_id =  length(regexall("[[:us-east-2a:]]", "aws_subnet.my_private_subnet[count.index].arn")) > 0 ? aws_route_table.my_private_routetable[0].id : aws_route_table.my_private_routetable[1].id

}



