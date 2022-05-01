


output "out_natgwid"{
     value = aws_nat_gateway.my_nat[*].id
}