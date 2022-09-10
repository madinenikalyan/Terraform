resource "aws_route_table" "public_rt" {
    vpc_id                  = aws_vpc.vpc.id
    tags = merge(
     {
      Name        = format("PublicRT-%s",var.vpc_name),
     },
     var.tags
  )
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.internet_gateway.id
}

resource "aws_route_table_association" "public_rta" {
  count = length(var.public_subnet_cidr_blocks)

  subnet_id      = aws_subnet.public_subnets[count.index].id
  route_table_id = aws_route_table.public_rt.id
}


