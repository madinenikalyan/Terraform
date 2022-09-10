# resource "aws_network_acl" "nacl01" {
#      vpc_id                  = module.vpc.vpc_id
#     tags = merge(
#      {
#       Name        = "nacl01"
#      },
#      var.tags
#   )
# }

# resource "aws_network_acl" "nacl02" {
#      vpc_id                  = module.vpc.vpc_id
#     tags = merge(
#      {
#       Name        = "nacl02"
#      },
#      var.tags
#   )
# }

# resource "aws_network_acl" "nacl03" {
#      vpc_id                  = module.vpc.vpc_id
#     tags = merge(
#      {
#       Name        = "nacl04"
#      },
#      var.tags
#   )
# }

# resource "aws_network_acl" "nacl04" {
#      vpc_id                  = module.vpc.vpc_id
#     tags = merge(
#      {
#       Name        = "nacl04"
#      },
#      var.tags
#   )
# }

module "nacl01" {
    source = "./module/nacl"
    nacl_name = "nacl01"
    vpc_id = module.vpc.vpc_id
}

module "nacl02" {
    source = "./module/nacl"
    nacl_name = "nacl02"
    vpc_id = module.vpc.vpc_id
}

module "nacl03" {
    source = "./module/nacl"
    nacl_name = "nacl03"
    vpc_id = module.vpc.vpc_id
}

module "nacl04" {
    source = "./module/nacl"
    nacl_name = "nacl04"
    vpc_id = module.vpc.vpc_id
}

