output "out_public_subnetid" {
    value = aws_subnet.my_public_subnet[*].id
}
