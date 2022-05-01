output "out_secgrpid_web" {
  description = "The ID of the security group"
  value  = aws_security_group.my_secgrp_web.id
}


output "out_secgrpid_app" {
  description = "The ID of the security group"
  value       = aws_security_group.my_secgrp_app.id
}


output "out_secgrpid_ALB" {
  description = "The ID of the security group"
  value       = aws_security_group.my_secgrp_ALB.id
}


output "out_secgrpid_RDS" {
  description = "The ID of the security group"
  value       = aws_security_group.my_secgrp_RDS.id
}