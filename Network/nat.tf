

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