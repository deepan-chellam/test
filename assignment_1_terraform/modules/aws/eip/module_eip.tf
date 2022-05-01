
 locals {
     total_eip = 2
}

resource "aws_eip" "my_eip" {
# putting depency on NATGW. so NATGW will create fist, followed by EIP creation
count = local.total_eip
vpc = true
# depends_on = [aws_nat_gateway.my_nat]
tags = {
    Name = "${var.env}-eip-${count.index}"
}

}