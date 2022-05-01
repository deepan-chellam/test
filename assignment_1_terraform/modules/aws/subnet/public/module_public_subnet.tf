
locals {
  max_public_subnet = length(var.in_cidrblock) 
}

resource "aws_subnet" "my_public_subnet" {
  count                  = local.max_public_subnet
  vpc_id                 = var.in_vpcid
  cidr_block             = var.in_cidrblock[count.index]
  availability_zone      = var.in_az[count.index]
  map_public_ip_on_launch = var.in_enablepublicip

  tags = {
    Name = "${var.env}-subnet-public-${var.in_softwaretype}-${var.in_az[count.index]}"
  }
}


# 1 route table creation for public route
resource "aws_route_table" "my_public_routetable" {
      vpc_id  = var.in_vpcid

      tags = {
          Name = "${var.env}-public-rtable"
        }

}

# attaching IGW for public traffic route to "0.0.0/0"
resource "aws_route" "my_public_route" {
        route_table_id = aws_route_table.my_public_routetable.id
        destination_cidr_block = "0.0.0.0/0"
        gateway_id = var.in_igwid

}

# public subnet association with 
resource "aws_route_table_association" "my_public_subnet_association" {
      count = local.max_public_subnet
      subnet_id = aws_subnet.my_public_subnet[count.index].id
      route_table_id = aws_route_table.my_public_routetable.id
}

