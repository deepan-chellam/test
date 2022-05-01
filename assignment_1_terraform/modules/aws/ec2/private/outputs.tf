

output "out_private_ec2instanceid" {
  value  = aws_instance.my_appserver[*].id
}

