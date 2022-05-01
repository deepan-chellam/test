output "out_private_subnetid" {
    value = aws_subnet.my_private_subnet[*].id
}
