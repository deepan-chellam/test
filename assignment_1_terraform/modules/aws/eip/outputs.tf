



output "out_eip_allocationid" {
    value = aws_eip.my_eip[*].allocation_id
}
