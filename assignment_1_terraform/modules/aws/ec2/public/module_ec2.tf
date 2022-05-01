
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
  total_public_instances = length(var.in_public_subnetid)
}



resource "aws_instance" "my_jumpserver" {
          count = local.total_public_instances
          # hard coded image from us-east-2 : AMAZON free tier. todo: need to make it dynamic
          # ami = "ami-0c6a6b0e75b2b6ce7"
          ami = data.aws_ami.my_amazonlinux.id
          instance_type = var.in_instancetype
          key_name = "${var.env}-master-keyfile123"
          monitoring = true
          vpc_security_group_ids = var.in_secgrpid_web
          subnet_id = var.in_public_subnetid[count.index]
          associate_public_ip_address = true 
          
          
            tags = {
              Name = "${var.env}-jumpserver-${var.in_az[count.index]}"
            }
}





