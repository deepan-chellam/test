

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



locals {
    #  total_private_instances = length(distinct(var.in_private_subnetid))
    total_private_instances = 2
}



resource "aws_instance" "my_appserver" {
          count = local.total_private_instances
          # hard coded image from us-east-2 : AMAZON free tier. todo: need to make it dynamic
          # ami = "ami-0c6a6b0e75b2b6ce7"
          ami = data.aws_ami.my_amazonlinux.id
          instance_type = var.in_instancetype
          key_name = "${var.env}-master-keyfile123"
          monitoring = true
          vpc_security_group_ids = var.in_secgrpid_app
          subnet_id = var.in_private_subnetid[count.index]
          associate_public_ip_address = false 
          
          user_data = <<EOF
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello world from $(hostname -f)</h1>" > /var/www/html/index.html
EOF
          
            tags = {
              Name = "${var.env}-appserver-${var.in_az[count.index]}"
            }
}





