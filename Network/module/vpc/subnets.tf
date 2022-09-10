
resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnet_cidr_blocks)
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet_cidr_blocks[count.index]
  availability_zone = var.private_availability_zones[count.index]
   tags = merge(
    {
      Name        =var.private_subnet_names[count.index]
    },
    var.tags
  )
}

resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnet_cidr_blocks)

  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_cidr_blocks[count.index]
  availability_zone       = var.public_availability_zones[count.index]
  map_public_ip_on_launch = true
   tags = merge(
    {
      Name        = var.public_subnet_names[count.index]
    },
    var.tags
  )
}