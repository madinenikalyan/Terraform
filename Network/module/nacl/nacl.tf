resource "aws_network_acl" "network_acl" {
    vpc_id                  = var.vpc_id
    subnet_ids             = var.nacl_subnet_id
    tags = merge(
     {
      Name        = var.nacl_name
     },
     var.tags
  )
}