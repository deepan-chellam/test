


resource "aws_internet_gateway" "my_igw" {
  vpc_id = var.in_vpcid

  tags = {
    Name = "${var.env}-igw"
  }

}