resource "aws_eip" "nat_eip" {
  vpc = true
 tags = merge(
     {
      Name        = format("EIP-%s",var.nat_name),
     },
     var.tags
  )
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = var.nat_subnet_ids

   tags = merge(
     {
      Name        = var.nat_name,
     },
     var.tags
  )
}