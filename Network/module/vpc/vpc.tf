resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
 tags = merge(
    {
      Name        = var.vpc_name,
    },
    var.tags
  )

}

resource "aws_internet_gateway" "internet_gateway" {
    vpc_id                  = aws_vpc.vpc.id
    tags = merge(
    {
      Name        = format("IGW-%s",var.vpc_name),
    },
    var.tags
  )
}







