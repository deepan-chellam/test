#create alb targetgrp
resource "aws_lb_target_group" "my_alb_targetgroup" {
  name     = "${var.env}-alb-targetgroup"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.in_vpcid

  
    health_check {
    path = "/"
    port = 80
    healthy_threshold = 3
    unhealthy_threshold = 2
    timeout = 2
    interval = 5
    matcher = "200"  # has to be HTTP 200 or fails
  }
  
}

# alb target grp to instance id attachment
resource "aws_lb_target_group_attachment" "my_alb_targetgroup_attachment" {
  count = 2
  depends_on = [aws_lb_target_group.my_alb_targetgroup]
  target_group_arn = aws_lb_target_group.my_alb_targetgroup.arn
  target_id        = var.in_private_ec2instanceid[count.index]

}


# create ALB
resource "aws_lb" "my_alb" {
  name               = "${var.env}-alb"
  depends_on = [aws_lb_target_group.my_alb_targetgroup]
  internal           = false
  load_balancer_type = "application"
  security_groups    = var.in_secgrpid_ALB  
  subnets            = ["${var.in_public_subnetid[0]}",  "${var.in_public_subnetid[1]}"]
  # enable_deletion_protection = true
 
  # listener {
  #   instance_port     = 8000
  #   instance_protocol = "http"
  #   lb_port           = 80
  #   lb_protocol       = "http"
  # }



  tags = {
    Environment = "${var.env}-alb"
  }
}


#create alb listener and establish connection between listerna and  alb target group
resource "aws_lb_listener" "my_alb_listener" {
  load_balancer_arn = aws_lb.my_alb.arn
  port              = "80"
  protocol          = "HTTP"


  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.my_alb_targetgroup.arn
  }
}


 data "aws_ami" "my_amazonlinux" {
   most_recent = true

   filter {
     name   = "name"
    values = ["amzn2-ami-kernel-*-hvm-*-x86_64-gp2"]
   }

   filter {
     name   = "virtualization-type"
     values = ["hvm"]
   }
   
   filter {
     name   = "architecture"
     values = ["x86_64"]
   }

   filter {
     name   = "root-device-type"
     values = ["ebs"]
   }

   owners = ["amazon"]
 }


resource "aws_launch_configuration" "my_launchconfiguration" {
  name_prefix   = "${var.env}-launchconfiguration-"
  # image_id      = data.aws_ami.ubuntu.id
  # image_id = "ami-0c6a6b0e75b2b6ce7"
  image_id = data.aws_ami.my_amazonlinux.id
  security_groups      = ["${var.in_secgrpid_app}"]
  instance_type = var.in_instancetype
  key_name = "${var.env}-master-keyfile123"
  user_data = <<EOF
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello world from $(hostname -f)</h1>" > /var/www/html/index.html
EOF
  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_autoscaling_group" "my_alb_asg" {
  name                 = "${var.env}-alb-asg"
  depends_on = [aws_launch_configuration.my_launchconfiguration]
  min_size             = 1
  max_size             = 2
  desired_capacity     = var.in_desired_capacity
  vpc_zone_identifier  = [var.in_private_subnetid[0], var.in_private_subnetid[1]]

  lifecycle {
    create_before_destroy = true
  }
  
  launch_configuration = aws_launch_configuration.my_launchconfiguration.id

  health_check_type = "ELB"

  target_group_arns = [ aws_lb_target_group.my_alb_targetgroup.arn ]
	
}





