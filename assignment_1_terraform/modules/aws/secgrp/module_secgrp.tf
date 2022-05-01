



resource "aws_security_group" "my_secgrp_web" {
  name        = "${var.env}_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.in_vpcid

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.env}-secgrp-web"
  }
}



resource "aws_security_group" "my_secgrp_app" {
  name        = "${var.env}_allow_ssh_http"
  description = "Allow ssh and http inbound traffic"
  vpc_id      = var.in_vpcid

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    # cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
    security_groups = [ "${aws_security_group.my_secgrp_web.id}" ]
  }

    ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    # cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
    security_groups = [ "${aws_security_group.my_secgrp_ALB.id}" ]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.env}-secgrp-app"
  }
}



resource "aws_security_group" "my_secgrp_ALB" {
  name        = "${var.env}_allow_http"
  description = "Allow http inbound traffic"
  vpc_id      = var.in_vpcid


    ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.env}-secgrp-ALB"
  }
}


resource "aws_security_group" "my_secgrp_RDS" {
  name        = "${var.env}_allow_ssh_rdsport"
  description = "Allow http inbound traffic"
  vpc_id      = var.in_vpcid

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    #since On-primse CIDR range is unknown, keeping open to all with 22 with db username and password
    # we can make it tightened once we have the predeined CIDR range
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  
  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["10.0.3.0/24","10.0.4.0/24"]
    # cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.env}-secgrp-RDS"
  }
}













# resource "aws_security_group" "my_sg" {

#   vpc_id = var.in_vpcid



# description = "Allow SSH and http and https"

# ingress {

# from_port = 22

# to_port = 22

# protocol = "tcp"

# cidr_blocks = ["0.0.0.0/0"]

# }

# egress {

# from_port = 22

# to_port = 22

# protocol = "tcp"

# cidr_blocks = ["0.0.0.0/0"]

# }

# egress {
# from_port = 0
# to_port = 0
# protocol = "-1"
# cidr_blocks = ["0.0.0.0/0"]
# }
# ingress {
# from_port = 8
# to_port = 0
# protocol = "icmp"
# cidr_blocks = ["0.0.0.0/0"]
# }
# ingress {
# from_port = 80
# to_port = 80
# protocol = "tcp"
# cidr_blocks = ["0.0.0.0/0"]
# }
# ingress {
# from_port = 443
# to_port = 443
# protocol = "tcp"
# cidr_blocks = ["0.0.0.0/0"]
# }
# egress {
# from_port = 80
# to_port = 80
# protocol = "tcp"
# cidr_blocks = ["0.0.0.0/0"]
# }
# egress {
# from_port = 443
# to_port = 443
# protocol = "tcp"
# cidr_blocks = ["0.0.0.0/0"]
# }
# ingress {
# from_port = 3306
# to_port = 3306
# protocol = "TCP"
# cidr_blocks = ["10.0.2.0/24"]
# }
# egress {
# from_port = 3306
# to_port = 3306
# protocol = "tcp"
# cidr_blocks = ["10.0.2.0/24"]
# }

# tags {
# Name = "sg"
# }
# }