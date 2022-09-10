locals {
  nat_subnet_ids = [module.vpc.public_subnet_ids[0],module.vpc.public_subnet_ids[1]]
}