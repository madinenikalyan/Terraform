resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id

    tags = merge(
     {
      Name        = var.rt_name,
     },
     var.tags
  )
}

resource "aws_route_table_association" "route_table_association_subnet" {
  count  = var.routetable_subnet_id == null ? 0 : 1
  subnet_id      = var.routetable_subnet_id
  route_table_id = aws_route_table.route_table.id
}

# resource "aws_route_table_association" "route_table_association_gateway" {
#   count          = var.routetable_gateway_id == null ? 0 :1
#   gateway_id     = var.routetable_gateway_id
#   route_table_id = aws_route_table.route_table.id
# }

