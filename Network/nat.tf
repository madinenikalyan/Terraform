# resource "aws_eip" "eip_nat" {
#   count = length(local.nat_subnet_ids)
#   vpc = true
#  tags = merge(
#      {
#       Name        = format("EIP-%s",local.nat_subnet_ids[count.index]),
#      },
#      var.tags
#   )
# }

# resource "aws_nat_gateway" "nat_gateway" {
  
#   count = length(local.nat_subnet_ids)

#   allocation_id = aws_eip.eip_nat[count.index].id
#   subnet_id     = local.nat_subnet_ids[count.index]

#    tags = merge(
#      {
#       Name        = format("NAT-%s",local.nat_subnet_ids[count.index]),
#      },
#      var.tags
#   )
# }

module "nat01" {
    source = "./module/nat"
    nat_name = "nat01"
    nat_subnet_ids = module.vpc.public_subnet_ids[1]
}

module "nat02" {
    source = "./module/nat"
    nat_name = "nat02"
    nat_subnet_ids = module.vpc.public_subnet_ids[2]
}